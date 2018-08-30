<?php
// +----------------------------------------------------------------------
// | 海豚PHP框架 [ DolphinPHP ]
// +----------------------------------------------------------------------
// | 版权所有 2016~2017 河源市卓锐科技有限公司 [ http://www.zrthink.com ]
// +----------------------------------------------------------------------
// | 官方网站: http://dolphinphp.com
// +----------------------------------------------------------------------
// | 开源协议 ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------

namespace app\index\controller;


/**
 * 生成二维码
 * qrcode
 */
use Endroid\QrCode\ErrorCorrectionLevel;
use Endroid\QrCode\LabelAlignment;
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Response\QrCodeResponse;

/**
 * 引入 twig 模板
 */



/**
 * 前台首页控制器
 * @package app\index\controller
 */
class Index extends Home
{
    public function index()
    {
        // 默认跳转模块
        if (config('home_default_module') != 'index') {
            $this->redirect(config('home_default_module'). '/index/index');
        }
        return '<style type="text/css">*{ padding: 0; margin: 0; } .think_default_text{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> '.config("dolphin.product_name").' '.config("dolphin.product_version").'<br/><span style="font-size:30px">极速 · 极简 · 极致</span></p></div>';
    }

    /**
     * 显示二维码
     * [qrcode_img description]
     * @return [type] [description]
     */
    public function qrcode_img()
    {
    	$qrcode_img = url('index/index/qrcode');
    	echo "<img src='{$qrcode_img}'>";
    }

    /**
     * 生成二维码
     * [qrcode description]
     * @return [type] [description]
     */
    public function qrcode()
    {
    	// Create a basic QR code
		$qrCode = new QrCode('Life is too short to be generating QR codes');
		$qrCode->setSize(300);

		// Set advanced options
		$qrCode->setWriterByName('png');
		$qrCode->setMargin(10);
		$qrCode->setEncoding('UTF-8');
		$qrCode->setErrorCorrectionLevel(ErrorCorrectionLevel::HIGH);
		$qrCode->setForegroundColor(['r' => 0, 'g' => 0, 'b' => 0, 'a' => 0]);
		$qrCode->setBackgroundColor(['r' => 255, 'g' => 255, 'b' => 255, 'a' => 0]);
		// $qrCode->setLabel('Scan the code', 16, __DIR__.'/../assets/fonts/noto_sans.otf', LabelAlignment::CENTER);
		// $qrCode->setLogoPath(__DIR__.'/../assets/images/symfony.png');
		$qrCode->setLogoWidth(150);
		// $qrCode->setRoundBlockSize(true);
		$qrCode->setValidateResult(false);

		// Directly output the QR code
		header('Content-Type: '.$qrCode->getContentType());
		echo $qrCode->writeString();

		// Save it to a file
		// $qrCode->writeFile(__DIR__.'/qrcode.png');

		// Create a response object
		// $response = new QrCodeResponse($qrCode);
    }

}
