 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> Getting Started Guide
        </div>
        <div class="panel-body">
        
    <p>1. <strong>Create account.</strong></p>
      <ul>
        <li>Register <a href="{$smarty.server.SCRIPT_NAME}?page=register">here</a>, or login if you already have account</li>
        <li>Create a <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">worker</a> that will be used by the miner to login</li>
      </ul>
    </li>
    <p>2. <strong>Download mining software.</strong></p>
      <ul>
	<p>The choice of mining software to use is up to you. CGMiner and BFGMiner are two of the most popular choices. Their output and set up are very similar, and we'll show in the next step how to set up either.</p>
        <p>Download the mining software of your choice from one of the links below:</p>
	<p>BFGMiner <a href="http://bfgminer.org" target="_blank">Download here</a></p>
	<p>CGMiner <a href="http://ck.kolivas.org/apps/cgminer/" target="_blank">Download here</a></p>
	<br />
	<p>Once your download is completed, unzip or extract the files to your desktop, or preferred folder.</p>
      </ul>
    </li>
    <p>3. <strong>Configure your mining software.</strong></p>
    <ul>
      	<p>At this stage your hardware should be connected and powered on. Let's now configure your mining software. We'll aim to produce a simple, reusable "start up" file. Once we're done, you'll simply double-click on this file to launch your software. This section looks long, but it is not as difficult as it seems. If you are confused about the instructions, look at the included screen captures for guidance, and be sure to double check the details of each step.</p>
	<p>You'll need your credentials (called "worker" info) and some pool information to configure your mining software. Open your preferred text editor, such as Notepad, Notepad++, Vim, or gedit. We'll show the specifics of Notepad, but the steps are very similar for others.
      	<p>Type the following, replacing the example user info with that of your own.</p>
      	<strong>BFGMiner</strong>
      	<pre>bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      	<strong>CGMiner</strong>
      	<pre>cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      	<p>Double check you've entered the appropriate credentials and url, then save the file. This is not just a text file, though. On Windows you'll need to save the file with the ".bat" extension.</p>
	<p>To do this in Notepad: Click on File, then Save As</p>
	<p>Next to "Save as type", open the drop-down menu and select "All Files" instead of "Text Documents(*.txt). Next to "File Name", enter "StartMining.bat", without quotes! Double check that Save as type is not "Text Documents", and click save.</p>
	<p>For ease later, move "StartMining.bat" to the folder containing your mining software files.</p>
	<p>Note for Linux users: instead of StartMining.bat, name your file StartMining.sh. After you save it, right click the file, click on "Properties", then under the "Permissions" tab tick the box for "Allow executing file as program". This will allow you to double-click the file to launch your mining software.
	<br />
	<p>Double click on your StartMining batch file.</p>
    </ul>
    <p>4. <strong>Create a {$SITECOINNAME|default:"Litecoin"} address to receive payments.</strong></p>
      <ul>
        <li> Downloading the client and block chain: Download the {$SITECOINNAME|default:"Litecoin"} client from <a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">here</a>.
          <p>Generate a new address and input it on your account page to receive payments.</p>
        </li>
      </ul>
    </li>
    {if $GLOBAL.config.algorithm == 'scrypt'}
    <p>5. <strong>Advanced CGMiner settings / FAQ</strong></p>
      <ul>
        <li><a href="https://raw.github.com/ckolivas/cgminer/v3.7.2/SCRYPT-README" target="_blank">Scrypt readme</a></li>
        <li>Don't set <b>intensity</b> too high, I=11 is standard and safest. Higher intensity takes more GPU RAM. Check for <b>hardware errors</b> in CGMiner (HW). HW=0 is good, otherwise lower intensity.</li>
        <li>Set shaders according to the readme (or look at your graphic cards specifications). CGMiner uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="http://litecoin.info/Mining_Hardware_Comparison" target="_blank">here</a>.</li>
        <li>There's also an interesting project which gives you a GUI for CGMiner. Windows only it seems.</li>
        <li>Here's a great <a href="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true" target="_blank">guide</a> how to get up and running with Xubuntu.</li>
      </ul>
    </li>
    {/if}
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
