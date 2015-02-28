      <div class="panel-footer">
        <div class="row">
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-cube fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-nblock">{$NETWORK.block}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Current Block</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-pie-chart fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-roundprogress">{$ESTIMATES.percent|number_format:"2"}%</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Of Expected Shares</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-money fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-payout">{$GLOBAL.userdata.estimates.payout|number_format:$PRECISION} ({$GLOBAL.config.currency})</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Estimated Payout</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-cog fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-diff">{$NETWORK.difficulty|number_format:"2"}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Difficulty</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-cogs fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-nextdiff">{if $GLOBAL.nethashrate > 0}{$NETWORK.EstNextDifficulty|number_format:"2"}{else}n/a{/if}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Next Difficulty {if $GLOBAL.nethashrate > 0}<br/>Change in {$NETWORK.BlocksUntilDiffChange} Blocks{else}No Estimates{/if}</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-clock-o fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5" id="b-esttimeperblock">{$NETWORK.EstTimePerBlock|seconds_to_hhmmss}</p>
                </div>
                <div class="circle-tile-number text-faded">
                  <p class="h6">Average Block Time</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
