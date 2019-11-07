;; Helper function to create the "choice1|choice2" string for the gui.
Join(sep, params*) {
    for index,param in params
        str .= sep . param
    return SubStr(str, StrLen(sep)+1)
}

;; Helper function that creates a minimal multiple choice menu, to resolve ambigous commands.
cmdChoiceGui(choiceArr)
{
    global
    Gui, Destroy
    Gui Margin, 0, 0


    Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow

    i := choiceArr.MaxIndex()
    choiceStr := Join("|",choiceArr*)
    Gui, Add, ListBox, vMyChoice r%i% w500, %choiceStr%
    Gui, Add, Button, Default, OK
    GuiControl, Hide, OK

    Gui, Show, AutoSize, NoActivate
    return

    ButtonOK:
        Gui, Submit
        SendInput, % MyChoice
    return

    GuiEscape:
        Gui, Destroy
    return
}

::!esde::
SendInput, esxcli device
Return

::!esdead::
SendInput, esxcli device add
Return

::!esdeal::
SendInput, esxcli device alias
Return

::!esdealge::
SendInput, esxcli device alias get
Return

::!esdealli::
SendInput, esxcli device alias list
Return

::!esdedr::
SendInput, esxcli device driver
Return

::!esdedrli::
SendInput, esxcli device driver list
Return

::!esdeso::
SendInput, esxcli device software
Return

::!esdesoad::
SendInput, esxcli device software add
Return

::!esdesoli::
SendInput, esxcli device software list
Return

::!esdesore::
SendInput, esxcli device software remove
Return

::!eses::
SendInput, esxcli esxcli
Return

::!esesco::
SendInput, esxcli esxcli command
Return

::!esescoli::
SendInput, esxcli esxcli command list
Return

::!esfc::
SendInput, esxcli fcoe
Return

::!esfcad::
SendInput, esxcli fcoe adapter
Return

::!esfcadli::
SendInput, esxcli fcoe adapter list
Return

::!esfcadre::
SendInput, esxcli fcoe adapter remove
Return

::!esfcni::
SendInput, esxcli fcoe nic
Return

::!esfcnien::
SendInput, esxcli fcoe nic enable
Return

::!esfcnili::
SendInput, esxcli fcoe nic list
Return

::!esfcnire::
SendInput, esxcli fcoe nic remove
Return

::!esfcnise::
SendInput, esxcli fcoe nic set
Return

::!esgr::
SendInput, esxcli graphics
Return

::!esgrde::
SendInput, esxcli graphics device
Return

::!esgrdeli::
SendInput, esxcli graphics device list
Return

::!esgrdest::
SendInput, esxcli graphics device stats
Return

::!esgrdestli::
SendInput, esxcli graphics device stats list
Return

::!esgrho::
SendInput, esxcli graphics host
Return

::!esgrhoge::
SendInput, esxcli graphics host get
Return

::!esgrhore::
SendInput, esxcli graphics host refresh
Return

::!esgrhose::
SendInput, esxcli graphics host set
Return

::!esgrvm::
SendInput, esxcli graphics vm
Return

::!esgrvmli::
SendInput, esxcli graphics vm list
Return

::!esha::
SendInput, esxcli hardware
Return

::!eshabo::
SendInput, esxcli hardware bootdevice
Return

::!eshaboli::
SendInput, esxcli hardware bootdevice list
Return

::!eshacl::
SendInput, esxcli hardware clock
Return

::!eshaclge::
SendInput, esxcli hardware clock get
Return

::!eshaclse::
SendInput, esxcli hardware clock set
Return

::!eshacp::
SendInput, esxcli hardware cpu
Return

::!eshacpcp::
SendInput, esxcli hardware cpu cpuid
Return

::!eshacpcpge::
SendInput, esxcli hardware cpu cpuid get
Return

::!eshacpcpra::
SendInput, esxcli hardware cpu cpuid raw
Return

::!eshacpcprali::
SendInput, esxcli hardware cpu cpuid raw list
Return

::!eshacpgl::
SendInput, esxcli hardware cpu global
Return

::!eshacpglge::
SendInput, esxcli hardware cpu global get
Return

::!eshacpglse::
SendInput, esxcli hardware cpu global set
Return

::!eshacpli::
SendInput, esxcli hardware cpu list
Return

::!eshaip::
SendInput, esxcli hardware ipmi
Return

::!eshaipbm::
SendInput, esxcli hardware ipmi bmc
Return

::!eshaipbmge::
SendInput, esxcli hardware ipmi bmc get
Return

::!eshaipbmse::
SendInput, esxcli hardware ipmi bmc set
Return

::!eshaipfr::
SendInput, esxcli hardware ipmi fru
Return

::!eshaipfrge::
SendInput, esxcli hardware ipmi fru get
Return

::!eshaipfrli::
SendInput, esxcli hardware ipmi fru list
Return

::!eshaipsd::
SendInput, esxcli hardware ipmi sdr
Return

::!eshaipsdge::
SendInput, esxcli hardware ipmi sdr get
Return

::!eshaipsdli::
SendInput, esxcli hardware ipmi sdr list
Return

::!eshaipse::
SendInput, esxcli hardware ipmi sel
Return

::!eshaipsecl::
SendInput, esxcli hardware ipmi sel clear
Return

::!eshaipsege::
SendInput, esxcli hardware ipmi sel get
Return

::!eshaipseli::
SendInput, esxcli hardware ipmi sel list
Return

::!eshame::
SendInput, esxcli hardware memory
Return

::!eshamege::
SendInput, esxcli hardware memory get
Return

::!eshapc::
SendInput, esxcli hardware pci
Return

::!eshapcli::
SendInput, esxcli hardware pci list
Return

::!eshapl::
SendInput, esxcli hardware platform
Return

::!eshaplge::
SendInput, esxcli hardware platform get
Return

::!eshapo::
SendInput, esxcli hardware power
Return

::!eshapopo::
SendInput, esxcli hardware power policy
Return

::!eshapopoch::
SendInput, esxcli hardware power policy choices
Return

::!eshapopochli::
SendInput, esxcli hardware power policy choices list
Return

::!eshapopoge::
SendInput, esxcli hardware power policy get
Return

::!eshapopose::
SendInput, esxcli hardware power policy set
Return

::!eshasm::
SendInput, esxcli hardware smartcard
Return

::!eshasmce::
SendInput, esxcli hardware smartcard certificate
Return

::!eshasmceli::
SendInput, esxcli hardware smartcard certificate list
Return

::!eshasmin::
SendInput, esxcli hardware smartcard info
Return

::!eshasminge::
SendInput, esxcli hardware smartcard info get
Return

::!eshasmsl::
SendInput, esxcli hardware smartcard slot
Return

::!eshasmslli::
SendInput, esxcli hardware smartcard slot list
Return

::!eshasmto::
SendInput, esxcli hardware smartcard token
Return

::!eshasmtoli::
SendInput, esxcli hardware smartcard token list
Return

::!eshatp::
SendInput, esxcli hardware tpm
Return

::!eshatpta::
SendInput, esxcli hardware tpm tag
Return

::!eshatptacl::
SendInput, esxcli hardware tpm tag clear
Return

::!eshatptage::
SendInput, esxcli hardware tpm tag get
Return

::!eshatptase::
SendInput, esxcli hardware tpm tag set
Return

::!eshatr::
SendInput, esxcli hardware trustedboot
Return

::!eshatrge::
SendInput, esxcli hardware trustedboot get
Return

::!eshaus::
SendInput, esxcli hardware usb
Return

::!eshauspa::
SendInput, esxcli hardware usb passthrough
Return

::!eshauspade::
SendInput, esxcli hardware usb passthrough device
Return

::!eshauspadedi::
SendInput, esxcli hardware usb passthrough device disable
Return

::!eshauspadeen::
SendInput, esxcli hardware usb passthrough device enable
Return

::!eshauspadeli::
SendInput, esxcli hardware usb passthrough device list
Return

::!esis::
SendInput, esxcli iscsi
Return

::!esisad::
SendInput, esxcli iscsi adapter
Return

::!esisadau::
SendInput, esxcli iscsi adapter auth
Return

::!esisadauch::
SendInput, esxcli iscsi adapter auth chap
Return

::!esisadauchge::
SendInput, esxcli iscsi adapter auth chap get
Return

::!esisadauchse::
SendInput, esxcli iscsi adapter auth chap set
Return

::!esisadca::
SendInput, esxcli iscsi adapter capabilities
Return

::!esisadcage::
SendInput, esxcli iscsi adapter capabilities get
Return

::!esisaddi::
SendInput, esxcli iscsi adapter discovery
Return

::!esisaddire::
SendInput, esxcli iscsi adapter discovery rediscover
Return

::!esisaddise::
SendInput, esxcli iscsi adapter discovery sendtarget
Return

::!esisaddisead::
SendInput, esxcli iscsi adapter discovery sendtarget add
Return

::!esisaddiseau::
SendInput, esxcli iscsi adapter discovery sendtarget auth
Return

::!esisaddiseauch::
SendInput, esxcli iscsi adapter discovery sendtarget auth chap
Return

::!esisaddiseauchge::
SendInput, esxcli iscsi adapter discovery sendtarget auth chap get
Return

::!esisaddiseauchse::
SendInput, esxcli iscsi adapter discovery sendtarget auth chap set
Return

::!esisaddiseli::
SendInput, esxcli iscsi adapter discovery sendtarget list
Return

::!esisaddisepa::
SendInput, esxcli iscsi adapter discovery sendtarget param
Return

::!esisaddisepage::
SendInput, esxcli iscsi adapter discovery sendtarget param get
Return

::!esisaddisepase::
SendInput, esxcli iscsi adapter discovery sendtarget param set
Return

::!esisaddisere::
SendInput, esxcli iscsi adapter discovery sendtarget remove
Return

::!esisaddistad::
SendInput, esxcli iscsi adapter discovery statictarget add
Return

::!esisaddistli::
SendInput, esxcli iscsi adapter discovery statictarget list
Return

::!esisaddistre::
SendInput, esxcli iscsi adapter discovery statictarget remove
Return

::!esisaddistge::
SendInput, esxcli iscsi adapter discovery status get
Return

::!esisadfi::
SendInput, esxcli iscsi adapter firmware
Return

::!esisadfige::
SendInput, esxcli iscsi adapter firmware get
Return

::!esisadfise::
SendInput, esxcli iscsi adapter firmware set
Return

::!esisadge::
SendInput, esxcli iscsi adapter get
Return

::!esisadli::
SendInput, esxcli iscsi adapter list
Return

::!esisadpa::
SendInput, esxcli iscsi adapter param
Return

::!esisadpage::
SendInput, esxcli iscsi adapter param get
Return

::!esisadpase::
SendInput, esxcli iscsi adapter param set
Return

::!esisadse::
SendInput, esxcli iscsi adapter set
Return

::!esisadta::
SendInput, esxcli iscsi adapter target
Return

::!esisadtali::
SendInput, esxcli iscsi adapter target list
Return

::!esisadtalu::
SendInput, esxcli iscsi adapter target lun
Return

::!esisadtaluli::
SendInput, esxcli iscsi adapter target lun list
Return

::!esisadtapo::
SendInput, esxcli iscsi adapter target portal
Return

::!esisadtapoau::
SendInput, esxcli iscsi adapter target portal auth
Return

::!esisadtapoauch::
SendInput, esxcli iscsi adapter target portal auth chap
Return

::!esisadtapoauchge::
SendInput, esxcli iscsi adapter target portal auth chap get
Return

::!esisadtapoauchse::
SendInput, esxcli iscsi adapter target portal auth chap set
Return

::!esisadtapoli::
SendInput, esxcli iscsi adapter target portal list
Return

::!esisadtapopa::
SendInput, esxcli iscsi adapter target portal param
Return

::!esisadtapopage::
SendInput, esxcli iscsi adapter target portal param get
Return

::!esisadtapopase::
SendInput, esxcli iscsi adapter target portal param set
Return

::!esisib::
SendInput, esxcli iscsi ibftboot
Return

::!esisibge::
SendInput, esxcli iscsi ibftboot get
Return

::!esisibim::
SendInput, esxcli iscsi ibftboot import
Return

::!esislo::
SendInput, esxcli iscsi logicalnetworkportal
Return

::!esisloli::
SendInput, esxcli iscsi logicalnetworkportal list
Return

::!esisne::
SendInput, esxcli iscsi networkportal
Return

::!esisnead::
SendInput, esxcli iscsi networkportal add
Return

::!esisneipad::
SendInput, esxcli iscsi networkportal ipv6config address
Return

::!esisneipadad::
SendInput, esxcli iscsi networkportal ipv6config address add
Return

::!esisneipadli::
SendInput, esxcli iscsi networkportal ipv6config address list
Return

::!esisneipadre::
SendInput, esxcli iscsi networkportal ipv6config address remove
Return

::!esisneli::
SendInput, esxcli iscsi networkportal list
Return

::!esisnere::
SendInput, esxcli iscsi networkportal remove
Return

::!esisph::
SendInput, esxcli iscsi physicalnetworkportal
Return

::!esisphli::
SendInput, esxcli iscsi physicalnetworkportal list
Return

::!esisphpa::
SendInput, esxcli iscsi physicalnetworkportal param
Return

::!esisphpage::
SendInput, esxcli iscsi physicalnetworkportal param get
Return

::!esisphpase::
SendInput, esxcli iscsi physicalnetworkportal param set
Return

::!esispl::
SendInput, esxcli iscsi plugin
Return

::!esisplli::
SendInput, esxcli iscsi plugin list
Return

::!esisse::
SendInput, esxcli iscsi session
Return

::!esissead::
SendInput, esxcli iscsi session add
Return

::!esisseco::
SendInput, esxcli iscsi session connection
Return

::!esissecoli::
SendInput, esxcli iscsi session connection list
Return

::!esisseli::
SendInput, esxcli iscsi session list
Return

::!esissere::
SendInput, esxcli iscsi session remove
Return

::!esisso::
SendInput, esxcli iscsi software
Return

::!esissoge::
SendInput, esxcli iscsi software get
Return

::!esissose::
SendInput, esxcli iscsi software set
Return

::!esne::
SendInput, esxcli network
Return

::!esnedi::
SendInput, esxcli network diag
Return

::!esnedipi::
SendInput, esxcli network diag ping
Return

::!esneen::
SendInput, esxcli network ens
Return

::!esneenlc::
SendInput, esxcli network ens lcore
Return

::!esneenlcad::
SendInput, esxcli network ens lcore add
Return

::!esneenlcaf::
SendInput, esxcli network ens lcore affinity
Return

::!esneenlcafge::
SendInput, esxcli network ens lcore affinity get
Return

::!esneenlcafse::
SendInput, esxcli network ens lcore affinity set
Return

::!esneenlcli::
SendInput, esxcli network ens lcore list
Return

::!esneenlcre::
SendInput, esxcli network ens lcore remove
Return

::!esneenlcsw::
SendInput, esxcli network ens lcore switch
Return

::!esneenlcswad::
SendInput, esxcli network ens lcore switch add
Return

::!esneenlcswge::
SendInput, esxcli network ens lcore switch get
Return

::!esneenlcswre::
SendInput, esxcli network ens lcore switch remove
Return

::!esneenma::
SendInput, esxcli network ens maxLcores
Return

::!esneenmage::
SendInput, esxcli network ens maxLcores get
Return

::!esneenmase::
SendInput, esxcli network ens maxLcores set
Return

::!esnefi::
SendInput, esxcli network firewall
Return

::!esnefige::
SendInput, esxcli network firewall get
Return

::!esnefilo::
SendInput, esxcli network firewall load
Return

::!esnefire::
SendInput, esxcli network firewall refresh
Return

::!esnefiru::
SendInput, esxcli network firewall ruleset
Return

::!esnefirual::
SendInput, esxcli network firewall ruleset allowedip
Return

::!esnefirualad::
SendInput, esxcli network firewall ruleset allowedip add
Return

::!esnefirualli::
SendInput, esxcli network firewall ruleset allowedip list
Return

::!esnefirualre::
SendInput, esxcli network firewall ruleset allowedip remove
Return

::!esnefirucl::
SendInput, esxcli network firewall ruleset client
Return

::!esnefiruclad::
SendInput, esxcli network firewall ruleset client add
Return

::!esnefiruclge::
SendInput, esxcli network firewall ruleset client get
Return

::!esnefiruclre::
SendInput, esxcli network firewall ruleset client remove
Return

::!esnefiruli::
SendInput, esxcli network firewall ruleset list
Return

::!esnefiruru::
SendInput, esxcli network firewall ruleset rule
Return

::!esnefiruruli::
SendInput, esxcli network firewall ruleset rule list
Return

::!esnefiruse::
SendInput, esxcli network firewall ruleset set
Return

::!esnefise::
SendInput, esxcli network firewall set
Return

::!esnefiun::
SendInput, esxcli network firewall unload
Return

::!esneip::
SendInput, esxcli network ip
Return

::!esneipco::
SendInput, esxcli network ip connection
Return

::!esneipcoli::
SendInput, esxcli network ip connection list
Return

::!esneipdn::
SendInput, esxcli network ip dns
Return

::!esneipge::
SendInput, esxcli network ip get
Return

::!esneipin::
SendInput, esxcli network ip interface
Return

::!esneipinad::
SendInput, esxcli network ip interface add
Return

::!esneipinipadad::
SendInput, esxcli network ip interface ipv6 address add
Return

::!esneipinipadre::
SendInput, esxcli network ip interface ipv6 address remove
Return

::!esneipinli::
SendInput, esxcli network ip interface list
Return

::!esneipinre::
SendInput, esxcli network ip interface remove
Return

::!esneipinse::
SendInput, esxcli network ip interface set
Return

::!esneipinta::
SendInput, esxcli network ip interface tag
Return

::!esneipintaad::
SendInput, esxcli network ip interface tag add
Return

::!esneipintage::
SendInput, esxcli network ip interface tag get
Return

::!esneipintare::
SendInput, esxcli network ip interface tag remove
Return

::!esneipip::
SendInput, esxcli network ip ipsec
Return

::!esneipipsa::
SendInput, esxcli network ip ipsec sa
Return

::!esneipipsaad::
SendInput, esxcli network ip ipsec sa add
Return

::!esneipipsali::
SendInput, esxcli network ip ipsec sa list
Return

::!esneipipsare::
SendInput, esxcli network ip ipsec sa remove
Return

::!esneipipsp::
SendInput, esxcli network ip ipsec sp
Return

::!esneipipspad::
SendInput, esxcli network ip ipsec sp add
Return

::!esneipipspli::
SendInput, esxcli network ip ipsec sp list
Return

::!esneipipspre::
SendInput, esxcli network ip ipsec sp remove
Return

::!esneipnead::
SendInput, esxcli network ip netstack add
Return

::!esneipnege::
SendInput, esxcli network ip netstack get
Return

::!esneipnese::
SendInput, esxcli network ip netstack set
Return

::!esneipro::
SendInput, esxcli network ip route
Return

::!esneipse::
SendInput, esxcli network ip set
Return

::!esnemu::
SendInput, esxcli network multicast
Return

::!esnemugr::
SendInput, esxcli network multicast group
Return

::!esnemugrli::
SendInput, esxcli network multicast group list
Return

::!esneni::
SendInput, esxcli network nic
Return

::!esnenico::
SendInput, esxcli network nic coalesce
Return

::!esnenicoge::
SendInput, esxcli network nic coalesce get
Return

::!esnenicohi::
SendInput, esxcli network nic coalesce high
Return

::!esnenicohige::
SendInput, esxcli network nic coalesce high get
Return

::!esnenicohise::
SendInput, esxcli network nic coalesce high set
Return

::!esnenicolo::
SendInput, esxcli network nic coalesce low
Return

::!esnenicologe::
SendInput, esxcli network nic coalesce low get
Return

::!esnenicolose::
SendInput, esxcli network nic coalesce low set
Return

::!esnenicose::
SendInput, esxcli network nic coalesce set
Return

::!esnenics::
SendInput, esxcli network nic cso
Return

::!esnenicsge::
SendInput, esxcli network nic cso get
Return

::!esnenicsse::
SendInput, esxcli network nic cso set
Return

::!esnenido::
SendInput, esxcli network nic down
Return

::!esneniee::
SendInput, esxcli network nic eeprom
Return

::!esnenieech::
SendInput, esxcli network nic eeprom change
Return

::!esnenieedu::
SendInput, esxcli network nic eeprom dump
Return

::!esnenige::
SendInput, esxcli network nic get
Return

::!esnenili::
SendInput, esxcli network nic list
Return

::!esnenine::
SendInput, esxcli network nic negotiate
Return

::!esneninere::
SendInput, esxcli network nic negotiate restart
Return

::!esnenipa::
SendInput, esxcli network nic pauseParams
Return

::!esnenipali::
SendInput, esxcli network nic pauseParams list
Return

::!esnenipase::
SendInput, esxcli network nic pauseParams set
Return

::!esneniqu::
SendInput, esxcli network nic queue
Return

::!esneniquco::
SendInput, esxcli network nic queue count
Return

::!esneniqucoge::
SendInput, esxcli network nic queue count get
Return

::!esneniqucose::
SendInput, esxcli network nic queue count set
Return

::!esneniqufi::
SendInput, esxcli network nic queue filterclass
Return

::!esneniqufili::
SendInput, esxcli network nic queue filterclass list
Return

::!esneniqulo::
SendInput, esxcli network nic queue loadbalancer
Return

::!esneniquloli::
SendInput, esxcli network nic queue loadbalancer list
Return

::!esneniqulopl::
SendInput, esxcli network nic queue loadbalancer plugin
Return

::!esneniquloplli::
SendInput, esxcli network nic queue loadbalancer plugin list
Return

::!esneniquloplse::
SendInput, esxcli network nic queue loadbalancer plugin set
Return

::!esneniqulose::
SendInput, esxcli network nic queue loadbalancer set
Return

::!esneniqulost::
SendInput, esxcli network nic queue loadbalancer state
Return

::!esneniqulostli::
SendInput, esxcli network nic queue loadbalancer state list
Return

::!esneniqulostse::
SendInput, esxcli network nic queue loadbalancer state set
Return

::!esnenire::
SendInput, esxcli network nic register
Return

::!esneniredu::
SendInput, esxcli network nic register dump
Return

::!esneniri::
SendInput, esxcli network nic ring
Return

::!esneniricu::
SendInput, esxcli network nic ring current
Return

::!esneniricuge::
SendInput, esxcli network nic ring current get
Return

::!esneniricuse::
SendInput, esxcli network nic ring current set
Return

::!esneniripr::
SendInput, esxcli network nic ring preset
Return

::!esneniriprge::
SendInput, esxcli network nic ring preset get
Return

::!esneniseru::
SendInput, esxcli network nic selftest run
Return

::!esnenisg::
SendInput, esxcli network nic sg
Return

::!esnenisgge::
SendInput, esxcli network nic sg get
Return

::!esnenisgse::
SendInput, esxcli network nic sg set
Return

::!esneniso::
SendInput, esxcli network nic software
Return

::!esnenisoli::
SendInput, esxcli network nic software list
Return

::!esnenisose::
SendInput, esxcli network nic software set
Return

::!esnenist::
SendInput, esxcli network nic stats
Return

::!esnenistge::
SendInput, esxcli network nic stats get
Return

::!esnenits::
SendInput, esxcli network nic tso
Return

::!esnenitsge::
SendInput, esxcli network nic tso get
Return

::!esnenitsse::
SendInput, esxcli network nic tso set
Return

::!esneniup::
SendInput, esxcli network nic up
Return

::!esnenivl::
SendInput, esxcli network nic vlan
Return

::!esnenivlst::
SendInput, esxcli network nic vlan stats
Return

::!esnenivlstge::
SendInput, esxcli network nic vlan stats get
Return

::!esnenivlstse::
SendInput, esxcli network nic vlan stats set
Return

::!esnepo::
SendInput, esxcli network port
Return

::!esnepofi::
SendInput, esxcli network port filter
Return

::!esnepofist::
SendInput, esxcli network port filter stats
Return

::!esnepofistge::
SendInput, esxcli network port filter stats get
Return

::!esnepost::
SendInput, esxcli network port stats
Return

::!esnepostge::
SendInput, esxcli network port stats get
Return

::!esnesr::
SendInput, esxcli network sriovnic
Return

::!esnesrli::
SendInput, esxcli network sriovnic list
Return

::!esnesrvf::
SendInput, esxcli network sriovnic vf
Return

::!esnesrvfli::
SendInput, esxcli network sriovnic vf list
Return

::!esnesrvfst::
SendInput, esxcli network sriovnic vf stats
Return

::!esnevm::
SendInput, esxcli network vm
Return

::!esnevmli::
SendInput, esxcli network vm list
Return

::!esnevmpo::
SendInput, esxcli network vm port
Return

::!esnevmpoli::
SendInput, esxcli network vm port list
Return

::!esnevs::
SendInput, esxcli network vswitch
Return

::!esnevsdv::
SendInput, esxcli network vswitch dvs
Return

::!esnevsdvvm::
SendInput, esxcli network vswitch dvs vmware
Return

::!esnevsdvvmla::
SendInput, esxcli network vswitch dvs vmware lacp
Return

::!esnevsdvvmlaco::
SendInput, esxcli network vswitch dvs vmware lacp config
Return

::!esnevsdvvmlacoge::
SendInput, esxcli network vswitch dvs vmware lacp config get
Return

::!esnevsdvvmlati::
SendInput, esxcli network vswitch dvs vmware lacp timeout
Return

::!esnevsdvvmlatise::
SendInput, esxcli network vswitch dvs vmware lacp timeout set
Return

::!esnevsdvvmli::
SendInput, esxcli network vswitch dvs vmware list
Return

::!esnevsst::
SendInput, esxcli network vswitch standard
Return

::!esnevsstad::
SendInput, esxcli network vswitch standard add
Return

::!esnevsstli::
SendInput, esxcli network vswitch standard list
Return

::!esnevsstpofa::
SendInput, esxcli network vswitch standard policy failover
Return

::!esnevsstpofage::
SendInput, esxcli network vswitch standard policy failover get
Return

::!esnevsstpofase::
SendInput, esxcli network vswitch standard policy failover set
Return

::!esnevsstposege::
SendInput, esxcli network vswitch standard policy security get
Return

::!esnevsstposese::
SendInput, esxcli network vswitch standard policy security set
Return

::!esnevsstposh::
SendInput, esxcli network vswitch standard policy shaping
Return

::!esnevsstposhge::
SendInput, esxcli network vswitch standard policy shaping get
Return

::!esnevsstposhse::
SendInput, esxcli network vswitch standard policy shaping set
Return

::!esnevsstpoad::
SendInput, esxcli network vswitch standard portgroup add
Return

::!esnevsstpoli::
SendInput, esxcli network vswitch standard portgroup list
Return

::!esnevsstpopo::
SendInput, esxcli network vswitch standard portgroup policy
Return

::!esnevsstpopofa::
SendInput, esxcli network vswitch standard portgroup policy failover
Return

::!esnevsstpopofage::
SendInput, esxcli network vswitch standard portgroup policy failover get
Return

::!esnevsstpopofase::
SendInput, esxcli network vswitch standard portgroup policy failover set
Return

::!esnevsstpopose::
SendInput, esxcli network vswitch standard portgroup policy security
Return

::!esnevsstpoposege::
SendInput, esxcli network vswitch standard portgroup policy security get
Return

::!esnevsstpoposese::
SendInput, esxcli network vswitch standard portgroup policy security set
Return

::!esnevsstpoposh::
SendInput, esxcli network vswitch standard portgroup policy shaping
Return

::!esnevsstpoposhge::
SendInput, esxcli network vswitch standard portgroup policy shaping get
Return

::!esnevsstpoposhse::
SendInput, esxcli network vswitch standard portgroup policy shaping set
Return

::!esnevsstpore::
SendInput, esxcli network vswitch standard portgroup remove
Return

::!esnevsstre::
SendInput, esxcli network vswitch standard remove
Return

::!esnevsstse::
SendInput, esxcli network vswitch standard set
Return

::!esnevsstup::
SendInput, esxcli network vswitch standard uplink
Return

::!esnevsstupad::
SendInput, esxcli network vswitch standard uplink add
Return

::!esnevsstupre::
SendInput, esxcli network vswitch standard uplink remove
Return

::!esnv::
SendInput, esxcli nvme
Return

::!esnvde::
SendInput, esxcli nvme device
Return

::!esnvdeco::
SendInput, esxcli nvme device controller
Return

::!esnvdecoli::
SendInput, esxcli nvme device controller list
Return

::!esnvdefe::
SendInput, esxcli nvme device feature
Return

::!esnvdefeae::
SendInput, esxcli nvme device feature aec
Return

::!esnvdefeaege::
SendInput, esxcli nvme device feature aec get
Return

::!esnvdefeaese::
SendInput, esxcli nvme device feature aec set
Return

::!esnvdefeap::
SendInput, esxcli nvme device feature apst
Return

::!esnvdefeapge::
SendInput, esxcli nvme device feature apst get
Return

::!esnvdefear::
SendInput, esxcli nvme device feature ar
Return

::!esnvdefearge::
SendInput, esxcli nvme device feature ar get
Return

::!esnvdefearse::
SendInput, esxcli nvme device feature ar set
Return

::!esnvdefeca::
SendInput, esxcli nvme device feature cap
Return

::!esnvdefeer::
SendInput, esxcli nvme device feature er
Return

::!esnvdefeerge::
SendInput, esxcli nvme device feature er get
Return

::!esnvdefeerse::
SendInput, esxcli nvme device feature er set
Return

::!esnvdefehi::
SendInput, esxcli nvme device feature hi
Return

::!esnvdefehige::
SendInput, esxcli nvme device feature hi get
Return

::!esnvdefehm::
SendInput, esxcli nvme device feature hmb
Return

::!esnvdefehmge::
SendInput, esxcli nvme device feature hmb get
Return

::!esnvdefeic::
SendInput, esxcli nvme device feature ic
Return

::!esnvdefeicge::
SendInput, esxcli nvme device feature ic get
Return

::!esnvdefeicse::
SendInput, esxcli nvme device feature ic set
Return

::!esnvdefeiv::
SendInput, esxcli nvme device feature ivc
Return

::!esnvdefeivge::
SendInput, esxcli nvme device feature ivc get
Return

::!esnvdefeivse::
SendInput, esxcli nvme device feature ivc set
Return

::!esnvdefeka::
SendInput, esxcli nvme device feature kat
Return

::!esnvdefekage::
SendInput, esxcli nvme device feature kat get
Return

::!esnvdefekase::
SendInput, esxcli nvme device feature kat set
Return

::!esnvdefelb::
SendInput, esxcli nvme device feature lba
Return

::!esnvdefelbge::
SendInput, esxcli nvme device feature lba get
Return

::!esnvdefenq::
SendInput, esxcli nvme device feature nq
Return

::!esnvdefenqge::
SendInput, esxcli nvme device feature nq get
Return

::!esnvdefepm::
SendInput, esxcli nvme device feature pm
Return

::!esnvdefepmge::
SendInput, esxcli nvme device feature pm get
Return

::!esnvdefepmse::
SendInput, esxcli nvme device feature pm set
Return

::!esnvdefesp::
SendInput, esxcli nvme device feature spm
Return

::!esnvdefespge::
SendInput, esxcli nvme device feature spm get
Return

::!esnvdefespse::
SendInput, esxcli nvme device feature spm set
Return

::!esnvdefett::
SendInput, esxcli nvme device feature tt
Return

::!esnvdefettge::
SendInput, esxcli nvme device feature tt get
Return

::!esnvdefettse::
SendInput, esxcli nvme device feature tt set
Return

::!esnvdefevw::
SendInput, esxcli nvme device feature vwc
Return

::!esnvdefevwge::
SendInput, esxcli nvme device feature vwc get
Return

::!esnvdefevwse::
SendInput, esxcli nvme device feature vwc set
Return

::!esnvdefewa::
SendInput, esxcli nvme device feature wa
Return

::!esnvdefewage::
SendInput, esxcli nvme device feature wa get
Return

::!esnvdefewase::
SendInput, esxcli nvme device feature wa set
Return

::!esnvdefi::
SendInput, esxcli nvme device firmware
Return

::!esnvdefiac::
SendInput, esxcli nvme device firmware activate
Return

::!esnvdefido::
SendInput, esxcli nvme device firmware download
Return

::!esnvdege::
SendInput, esxcli nvme device get
Return

::!esnvdeli::
SendInput, esxcli nvme device list
Return

::!esnvdelo::
SendInput, esxcli nvme device log
Return

::!esnvdeloer::
SendInput, esxcli nvme device log error
Return

::!esnvdeloerge::
SendInput, esxcli nvme device log error get
Return

::!esnvdelofw::
SendInput, esxcli nvme device log fwslot
Return

::!esnvdelofwge::
SendInput, esxcli nvme device log fwslot get
Return

::!esnvdelosm::
SendInput, esxcli nvme device log smart
Return

::!esnvdelosmge::
SendInput, esxcli nvme device log smart get
Return

::!esnvdena::
SendInput, esxcli nvme device namespace
Return

::!esnvdenaat::
SendInput, esxcli nvme device namespace attach
Return

::!esnvdenacr::
SendInput, esxcli nvme device namespace create
Return

::!esnvdenafo::
SendInput, esxcli nvme device namespace format
Return

::!esnvdenage::
SendInput, esxcli nvme device namespace get
Return

::!esnvdenali::
SendInput, esxcli nvme device namespace list
Return

::!esnvdere::
SendInput, esxcli nvme device register
Return

::!esnvderege::
SendInput, esxcli nvme device register get
Return

::!esnvdeti::
SendInput, esxcli nvme device timeout
Return

::!esnvdetige::
SendInput, esxcli nvme device timeout get
Return

::!esnvdetise::
SendInput, esxcli nvme device timeout set
Return

::!esnvdr::
SendInput, esxcli nvme driver
Return

::!esnvdrlo::
SendInput, esxcli nvme driver loglevel
Return

::!esnvdrlose::
SendInput, esxcli nvme driver loglevel set
Return

::!esrd::
SendInput, esxcli rdma
Return

::!esrdde::
SendInput, esxcli rdma device
Return

::!esrddeli::
SendInput, esxcli rdma device list
Return

::!esrddepr::
SendInput, esxcli rdma device protocol
Return

::!esrddeprli::
SendInput, esxcli rdma device protocol list
Return

::!esrddest::
SendInput, esxcli rdma device stats
Return

::!esrddestge::
SendInput, esxcli rdma device stats get
Return

::!esrddevm::
SendInput, esxcli rdma device vmknic
Return

::!esrddevmli::
SendInput, esxcli rdma device vmknic list
Return

::!esrdis::
SendInput, esxcli rdma iser
Return

::!esrdisad::
SendInput, esxcli rdma iser add
Return

::!esrdisde::
SendInput, esxcli rdma iser delete
Return

::!essc::
SendInput, esxcli sched
Return

::!esscre::
SendInput, esxcli sched reliablemem
Return

::!esscrege::
SendInput, esxcli sched reliablemem get
Return

::!esscsw::
SendInput, esxcli sched swap
Return

::!esscswsy::
SendInput, esxcli sched swap system
Return

::!esscswsyge::
SendInput, esxcli sched swap system get
Return

::!esscswsyse::
SendInput, esxcli sched swap system set
Return

::!esso::
SendInput, esxcli software
Return

::!essoac::
SendInput, esxcli software acceptance
Return

::!essoacge::
SendInput, esxcli software acceptance get
Return

::!essoacse::
SendInput, esxcli software acceptance set
Return

::!essopr::
SendInput, esxcli software profile
Return

::!essoprge::
SendInput, esxcli software profile get
Return

::!essoprin::
SendInput, esxcli software profile install
Return

::!essoprup::
SendInput, esxcli software profile update
Return

::!essoprva::
SendInput, esxcli software profile validate
Return

::!essoso::
SendInput, esxcli software sources
Return

::!essosopr::
SendInput, esxcli software sources profile
Return

::!essosoprge::
SendInput, esxcli software sources profile get
Return

::!essosoprli::
SendInput, esxcli software sources profile list
Return

::!essosovi::
SendInput, esxcli software sources vib
Return

::!essosovige::
SendInput, esxcli software sources vib get
Return

::!essosovili::
SendInput, esxcli software sources vib list
Return

::!essovi::
SendInput, esxcli software vib
Return

::!essovige::
SendInput, esxcli software vib get
Return

::!essoviin::
SendInput, esxcli software vib install
Return

::!essovili::
SendInput, esxcli software vib list
Return

::!essovire::
SendInput, esxcli software vib remove
Return

::!essovisi::
SendInput, esxcli software vib signature
Return

::!essovisive::
SendInput, esxcli software vib signature verify
Return

::!essoviup::
SendInput, esxcli software vib update
Return

::!esst::
SendInput, esxcli storage
Return

::!esstco::
SendInput, esxcli storage core
Return

::!esstcoad::
SendInput, esxcli storage core adapter
Return

::!esstcoadca::
SendInput, esxcli storage core adapter capabilities
Return

::!esstcoadcali::
SendInput, esxcli storage core adapter capabilities list
Return

::!esstcoadde::
SendInput, esxcli storage core adapter device
Return

::!esstcoaddeli::
SendInput, esxcli storage core adapter device list
Return

::!esstcoadli::
SendInput, esxcli storage core adapter list
Return

::!esstcoadre::
SendInput, esxcli storage core adapter rescan
Return

::!esstcoadst::
SendInput, esxcli storage core adapter stats
Return

::!esstcoadstge::
SendInput, esxcli storage core adapter stats get
Return

::!esstcoclau::
SendInput, esxcli storage core claiming autoclaim
Return

::!esstcoclun::
SendInput, esxcli storage core claiming unclaim
Return

::!esstcoclad::
SendInput, esxcli storage core claimrule add
Return

::!esstcoclco::
SendInput, esxcli storage core claimrule convert
Return

::!esstcoclli::
SendInput, esxcli storage core claimrule list
Return

::!esstcocllo::
SendInput, esxcli storage core claimrule load
Return

::!esstcoclmo::
SendInput, esxcli storage core claimrule move
Return

::!esstcoclru::
SendInput, esxcli storage core claimrule run
Return

::!esstcode::
SendInput, esxcli storage core device
Return

::!esstcodeca::
SendInput, esxcli storage core device capacity
Return

::!esstcodecali::
SendInput, esxcli storage core device capacity list
Return

::!esstcodede::
SendInput, esxcli storage core device detached
Return

::!esstcodedeli::
SendInput, esxcli storage core device detached list
Return

::!esstcodedere::
SendInput, esxcli storage core device detached remove
Return

::!esstcodein::
SendInput, esxcli storage core device inquirycache
Return

::!esstcodeinli::
SendInput, esxcli storage core device inquirycache list
Return

::!esstcodeinse::
SendInput, esxcli storage core device inquirycache set
Return

::!esstcodela::
SendInput, esxcli storage core device latencythreshold
Return

::!esstcodelali::
SendInput, esxcli storage core device latencythreshold list
Return

::!esstcodelase::
SendInput, esxcli storage core device latencythreshold set
Return

::!esstcodeli::
SendInput, esxcli storage core device list
Return

::!esstcodepa::
SendInput, esxcli storage core device partition
Return

::!esstcodepali::
SendInput, esxcli storage core device partition list
Return

::!esstcodepash::
SendInput, esxcli storage core device partition showguid
Return

::!esstcodeph::
SendInput, esxcli storage core device physical
Return

::!esstcodephge::
SendInput, esxcli storage core device physical get
Return

::!esstcodepu::
SendInput, esxcli storage core device purge
Return

::!esstcodera::
SendInput, esxcli storage core device raid
Return

::!esstcoderali::
SendInput, esxcli storage core device raid list
Return

::!esstcodesm::
SendInput, esxcli storage core device smart
Return

::!esstcodesmge::
SendInput, esxcli storage core device smart get
Return

::!esstcodest::
SendInput, esxcli storage core device stats
Return

::!esstcodestge::
SendInput, esxcli storage core device stats get
Return

::!esstcodeui::
SendInput, esxcli storage core device uidmap
Return

::!esstcodeuili::
SendInput, esxcli storage core device uidmap list
Return

::!esstcodeva::
SendInput, esxcli storage core device vaai
Return

::!esstcodevaat::
SendInput, esxcli storage core device vaai ats
Return

::!esstcodevaatli::
SendInput, esxcli storage core device vaai ats list
Return

::!esstcodevacl::
SendInput, esxcli storage core device vaai clone
Return

::!esstcodevaclli::
SendInput, esxcli storage core device vaai clone list
Return

::!esstcodevade::
SendInput, esxcli storage core device vaai delete
Return

::!esstcodevadeli::
SendInput, esxcli storage core device vaai delete list
Return

::!esstcodevast::
SendInput, esxcli storage core device vaai status
Return

::!esstcodevastge::
SendInput, esxcli storage core device vaai status get
Return

::!esstcodevastse::
SendInput, esxcli storage core device vaai status set
Return

::!esstcodevaze::
SendInput, esxcli storage core device vaai zero
Return

::!esstcodevazeli::
SendInput, esxcli storage core device vaai zero list
Return

::!esstcodewo::
SendInput, esxcli storage core device world
Return

::!esstcodewoli::
SendInput, esxcli storage core device world list
Return

::!esstcopa::
SendInput, esxcli storage core path
Return

::!esstcopali::
SendInput, esxcli storage core path list
Return

::!esstcopase::
SendInput, esxcli storage core path set
Return

::!esstcopast::
SendInput, esxcli storage core path stats
Return

::!esstcopastge::
SendInput, esxcli storage core path stats get
Return

::!esstcopl::
SendInput, esxcli storage core plugin
Return

::!esstcoplli::
SendInput, esxcli storage core plugin list
Return

::!esstcoplre::
SendInput, esxcli storage core plugin registration
Return

::!esstcoplread::
SendInput, esxcli storage core plugin registration add
Return

::!esstcoplreli::
SendInput, esxcli storage core plugin registration list
Return

::!esstcoplrere::
SendInput, esxcli storage core plugin registration remove
Return

::!esstfi::
SendInput, esxcli storage filesystem
Return

::!esstfiau::
SendInput, esxcli storage filesystem automount
Return

::!esstfili::
SendInput, esxcli storage filesystem list
Return

::!esstfimo::
SendInput, esxcli storage filesystem mount
Return

::!esstfire::
SendInput, esxcli storage filesystem rescan
Return

::!esstfiun::
SendInput, esxcli storage filesystem unmount
Return

::!essthp::
SendInput, esxcli storage hpp
Return

::!essthpde::
SendInput, esxcli storage hpp device
Return

::!essthpdeli::
SendInput, esxcli storage hpp device list
Return

::!essthpdese::
SendInput, esxcli storage hpp device set
Return

::!essthpdeus::
SendInput, esxcli storage hpp device usermarkedssd
Return

::!essthpdeusli::
SendInput, esxcli storage hpp device usermarkedssd list
Return

::!essthppa::
SendInput, esxcli storage hpp path
Return

::!essthppali::
SendInput, esxcli storage hpp path list
Return

::!esstio::
SendInput, esxcli storage iofilter
Return

::!esstioen::
SendInput, esxcli storage iofilter enable
Return

::!esstioli::
SendInput, esxcli storage iofilter list
Return

::!esstnm::
SendInput, esxcli storage nmp
Return

::!esstnmde::
SendInput, esxcli storage nmp device
Return

::!esstnmdeli::
SendInput, esxcli storage nmp device list
Return

::!esstnmdese::
SendInput, esxcli storage nmp device set
Return

::!esstnmpa::
SendInput, esxcli storage nmp path
Return

::!esstnmpali::
SendInput, esxcli storage nmp path list
Return

::!esstnmps::
SendInput, esxcli storage nmp psp
Return

::!esstnmpsfi::
SendInput, esxcli storage nmp psp fixed
Return

::!esstnmpsfide::
SendInput, esxcli storage nmp psp fixed deviceconfig
Return

::!esstnmpsfidege::
SendInput, esxcli storage nmp psp fixed deviceconfig get
Return

::!esstnmpsfidese::
SendInput, esxcli storage nmp psp fixed deviceconfig set
Return

::!esstnmpsge::
SendInput, esxcli storage nmp psp generic
Return

::!esstnmpsgede::
SendInput, esxcli storage nmp psp generic deviceconfig
Return

::!esstnmpsgedege::
SendInput, esxcli storage nmp psp generic deviceconfig get
Return

::!esstnmpsgedese::
SendInput, esxcli storage nmp psp generic deviceconfig set
Return

::!esstnmpsgepa::
SendInput, esxcli storage nmp psp generic pathconfig
Return

::!esstnmpsgepage::
SendInput, esxcli storage nmp psp generic pathconfig get
Return

::!esstnmpsgepase::
SendInput, esxcli storage nmp psp generic pathconfig set
Return

::!esstnmpsli::
SendInput, esxcli storage nmp psp list
Return

::!esstnmpsro::
SendInput, esxcli storage nmp psp roundrobin
Return

::!esstnmpsrode::
SendInput, esxcli storage nmp psp roundrobin deviceconfig
Return

::!esstnmpsrodege::
SendInput, esxcli storage nmp psp roundrobin deviceconfig get
Return

::!esstnmpsrodese::
SendInput, esxcli storage nmp psp roundrobin deviceconfig set
Return

::!esstnmsa::
SendInput, esxcli storage nmp satp
Return

::!esstnmsage::
SendInput, esxcli storage nmp satp generic
Return

::!esstnmsagede::
SendInput, esxcli storage nmp satp generic deviceconfig
Return

::!esstnmsagedege::
SendInput, esxcli storage nmp satp generic deviceconfig get
Return

::!esstnmsagedese::
SendInput, esxcli storage nmp satp generic deviceconfig set
Return

::!esstnmsagepa::
SendInput, esxcli storage nmp satp generic pathconfig
Return

::!esstnmsagepage::
SendInput, esxcli storage nmp satp generic pathconfig get
Return

::!esstnmsagepase::
SendInput, esxcli storage nmp satp generic pathconfig set
Return

::!esstnmsali::
SendInput, esxcli storage nmp satp list
Return

::!esstnmsaru::
SendInput, esxcli storage nmp satp rule
Return

::!esstnmsaruad::
SendInput, esxcli storage nmp satp rule add
Return

::!esstnmsaruli::
SendInput, esxcli storage nmp satp rule list
Return

::!esstnmsarure::
SendInput, esxcli storage nmp satp rule remove
Return

::!esstnmsase::
SendInput, esxcli storage nmp satp set
Return

::!esstsa::
SendInput, esxcli storage san
Return

::!esstsafcev::
SendInput, esxcli storage san fc events
Return

::!esstsafcevcl::
SendInput, esxcli storage san fc events clear
Return

::!esstsafcevge::
SendInput, esxcli storage san fc events get
Return

::!esstsais::
SendInput, esxcli storage san iscsi
Return

::!esstsaisli::
SendInput, esxcli storage san iscsi list
Return

::!esstsaisst::
SendInput, esxcli storage san iscsi stats
Return

::!esstsaisstge::
SendInput, esxcli storage san iscsi stats get
Return

::!esstsasa::
SendInput, esxcli storage san sas
Return

::!esstsasali::
SendInput, esxcli storage san sas list
Return

::!esstsasare::
SendInput, esxcli storage san sas reset
Return

::!esstsasast::
SendInput, esxcli storage san sas stats
Return

::!esstsasastge::
SendInput, esxcli storage san sas stats get
Return

::!esstvf::
SendInput, esxcli storage vflash
Return

::!esstvfca::
SendInput, esxcli storage vflash cache
Return

::!esstvfcage::
SendInput, esxcli storage vflash cache get
Return

::!esstvfcali::
SendInput, esxcli storage vflash cache list
Return

::!esstvfcast::
SendInput, esxcli storage vflash cache stats
Return

::!esstvfcastge::
SendInput, esxcli storage vflash cache stats get
Return

::!esstvfcastre::
SendInput, esxcli storage vflash cache stats reset
Return

::!esstvfde::
SendInput, esxcli storage vflash device
Return

::!esstvfdeli::
SendInput, esxcli storage vflash device list
Return

::!esstvfmo::
SendInput, esxcli storage vflash module
Return

::!esstvfmoge::
SendInput, esxcli storage vflash module get
Return

::!esstvfmoli::
SendInput, esxcli storage vflash module list
Return

::!esstvfmost::
SendInput, esxcli storage vflash module stats
Return

::!esstvfmostge::
SendInput, esxcli storage vflash module stats get
Return

::!esstvm::
SendInput, esxcli storage vmfs
Return

::!esstvmex::
SendInput, esxcli storage vmfs extent
Return

::!esstvmexli::
SendInput, esxcli storage vmfs extent list
Return

::!esstvmho::
SendInput, esxcli storage vmfs host
Return

::!esstvmholi::
SendInput, esxcli storage vmfs host list
Return

::!esstvmlo::
SendInput, esxcli storage vmfs lockmode
Return

::!esstvmloli::
SendInput, esxcli storage vmfs lockmode list
Return

::!esstvmlose::
SendInput, esxcli storage vmfs lockmode set
Return

::!esstvmpb::
SendInput, esxcli storage vmfs pbcache
Return

::!esstvmpbge::
SendInput, esxcli storage vmfs pbcache get
Return

::!esstvmpbre::
SendInput, esxcli storage vmfs pbcache reset
Return

::!esstvmre::
SendInput, esxcli storage vmfs reclaim
Return

::!esstvmreco::
SendInput, esxcli storage vmfs reclaim config
Return

::!esstvmrecoge::
SendInput, esxcli storage vmfs reclaim config get
Return

::!esstvmrecose::
SendInput, esxcli storage vmfs reclaim config set
Return

::!esstvmsn::
SendInput, esxcli storage vmfs snapshot
Return

::!esstvmsnex::
SendInput, esxcli storage vmfs snapshot extent
Return

::!esstvmsnexli::
SendInput, esxcli storage vmfs snapshot extent list
Return

::!esstvmsnli::
SendInput, esxcli storage vmfs snapshot list
Return

::!esstvmsnmo::
SendInput, esxcli storage vmfs snapshot mount
Return

::!esstvmsnre::
SendInput, esxcli storage vmfs snapshot resignature
Return

::!esstvmun::
SendInput, esxcli storage vmfs unmap
Return

::!esstvmup::
SendInput, esxcli storage vmfs upgrade
Return

::!esstvv::
SendInput, esxcli storage vvol
Return

::!esstvvda::
SendInput, esxcli storage vvol daemon
Return

::!esstvvdaun::
SendInput, esxcli storage vvol daemon unbindall
Return

::!esstvvpr::
SendInput, esxcli storage vvol protocolendpoint
Return

::!esstvvprli::
SendInput, esxcli storage vvol protocolendpoint list
Return

::!esstvvst::
SendInput, esxcli storage vvol storagecontainer
Return

::!esstvvstab::
SendInput, esxcli storage vvol storagecontainer abandonedvvol
Return

::!esstvvstabsc::
SendInput, esxcli storage vvol storagecontainer abandonedvvol scan
Return

::!esstvvstli::
SendInput, esxcli storage vvol storagecontainer list
Return

::!esstvvvage::
SendInput, esxcli storage vvol vasacontext get
Return

::!esstvvvali::
SendInput, esxcli storage vvol vasaprovider list
Return

::!essy::
SendInput, esxcli system
Return

::!essyac::
SendInput, esxcli system account
Return

::!essyacad::
SendInput, esxcli system account add
Return

::!essyacli::
SendInput, esxcli system account list
Return

::!essyacre::
SendInput, esxcli system account remove
Return

::!essyacse::
SendInput, esxcli system account set
Return

::!essyau::
SendInput, esxcli system auditrecords
Return

::!essyauge::
SendInput, esxcli system auditrecords get
Return

::!essyaulo::
SendInput, esxcli system auditrecords local
Return

::!essyaulodi::
SendInput, esxcli system auditrecords local disable
Return

::!essyauloen::
SendInput, esxcli system auditrecords local enable
Return

::!essyaulose::
SendInput, esxcli system auditrecords local set
Return

::!essyaure::
SendInput, esxcli system auditrecords remote
Return

::!essyauredi::
SendInput, esxcli system auditrecords remote disable
Return

::!essyaureen::
SendInput, esxcli system auditrecords remote enable
Return

::!essybo::
SendInput, esxcli system boot
Return

::!essybode::
SendInput, esxcli system boot device
Return

::!essybodege::
SendInput, esxcli system boot device get
Return

::!essycl::
SendInput, esxcli system clock
Return

::!essyclge::
SendInput, esxcli system clock get
Return

::!essyclse::
SendInput, esxcli system clock set
Return

::!essyco::
SendInput, esxcli system coredump
Return

::!essycofi::
SendInput, esxcli system coredump file
Return

::!essycofiad::
SendInput, esxcli system coredump file add
Return

::!essycofige::
SendInput, esxcli system coredump file get
Return

::!essycofili::
SendInput, esxcli system coredump file list
Return

::!essycofire::
SendInput, esxcli system coredump file remove
Return

::!essycofise::
SendInput, esxcli system coredump file set
Return

::!essycone::
SendInput, esxcli system coredump network
Return

::!essyconech::
SendInput, esxcli system coredump network check
Return

::!essyconege::
SendInput, esxcli system coredump network get
Return

::!essyconese::
SendInput, esxcli system coredump network set
Return

::!essycopa::
SendInput, esxcli system coredump partition
Return

::!essycopage::
SendInput, esxcli system coredump partition get
Return

::!essycopali::
SendInput, esxcli system coredump partition list
Return

::!essycopase::
SendInput, esxcli system coredump partition set
Return

::!essyho::
SendInput, esxcli system hostname
Return

::!essyhoge::
SendInput, esxcli system hostname get
Return

::!essyhose::
SendInput, esxcli system hostname set
Return

::!essyma::
SendInput, esxcli system maintenanceMode
Return

::!essymage::
SendInput, esxcli system maintenanceMode get
Return

::!essymase::
SendInput, esxcli system maintenanceMode set
Return

::!essymo::
SendInput, esxcli system module
Return

::!essymoge::
SendInput, esxcli system module get
Return

::!essymoli::
SendInput, esxcli system module list
Return

::!essymolo::
SendInput, esxcli system module load
Return

::!essymopa::
SendInput, esxcli system module parameters
Return

::!essymopaco::
SendInput, esxcli system module parameters copy
Return

::!essymopali::
SendInput, esxcli system module parameters list
Return

::!essymopase::
SendInput, esxcli system module parameters set
Return

::!essymose::
SendInput, esxcli system module set
Return

::!essype::
SendInput, esxcli system permission
Return

::!essypeli::
SendInput, esxcli system permission list
Return

::!essypese::
SendInput, esxcli system permission set
Return

::!essypeun::
SendInput, esxcli system permission unset
Return

::!essypr::
SendInput, esxcli system process
Return

::!essyprli::
SendInput, esxcli system process list
Return

::!essyprst::
SendInput, esxcli system process stats
Return

::!essyprstlo::
SendInput, esxcli system process stats load
Return

::!essyprstloge::
SendInput, esxcli system process stats load get
Return

::!essyprstru::
SendInput, esxcli system process stats running
Return

::!essyprstruge::
SendInput, esxcli system process stats running get
Return

::!essysedo::
SendInput, esxcli system secpolicy domain
Return

::!essysedoli::
SendInput, esxcli system secpolicy domain list
Return

::!essysedose::
SendInput, esxcli system secpolicy domain set
Return

::!essysece::
SendInput, esxcli system security certificatestore
Return

::!essysecead::
SendInput, esxcli system security certificatestore add
Return

::!essyseceli::
SendInput, esxcli system security certificatestore list
Return

::!essysecere::
SendInput, esxcli system security certificatestore remove
Return

::!essysefi::
SendInput, esxcli system security fips140
Return

::!essysefirh::
SendInput, esxcli system security fips140 rhttpproxy
Return

::!essysefirhge::
SendInput, esxcli system security fips140 rhttpproxy get
Return

::!essysefirhse::
SendInput, esxcli system security fips140 rhttpproxy set
Return

::!essysefiss::
SendInput, esxcli system security fips140 ssh
Return

::!essysefissge::
SendInput, esxcli system security fips140 ssh get
Return

::!essysefissse::
SendInput, esxcli system security fips140 ssh set
Return

::!essysead::
SendInput, esxcli system settings advanced
Return

::!essyseadli::
SendInput, esxcli system settings advanced list
Return

::!essyseadse::
SendInput, esxcli system settings advanced set
Return

::!essysekeli::
SendInput, esxcli system settings kernel list
Return

::!essysekese::
SendInput, esxcli system settings kernel set
Return

::!essysekela::
SendInput, esxcli system settings keyboard layout
Return

::!essysekelage::
SendInput, esxcli system settings keyboard layout get
Return

::!essysekelali::
SendInput, esxcli system settings keyboard layout list
Return

::!essysekelase::
SendInput, esxcli system settings keyboard layout set
Return

::!essysh::
SendInput, esxcli system shutdown
Return

::!essyshpo::
SendInput, esxcli system shutdown poweroff
Return

::!essyshre::
SendInput, esxcli system shutdown reboot
Return

::!essysl::
SendInput, esxcli system slp
Return

::!essyslse::
SendInput, esxcli system slp search
Return

::!essyslst::
SendInput, esxcli system slp stats
Return

::!essyslstge::
SendInput, esxcli system slp stats get
Return

::!essysn::
SendInput, esxcli system snmp
Return

::!essysnge::
SendInput, esxcli system snmp get
Return

::!essysnha::
SendInput, esxcli system snmp hash
Return

::!essysnse::
SendInput, esxcli system snmp set
Return

::!essysnte::
SendInput, esxcli system snmp test
Return

::!essyst::
SendInput, esxcli system stats
Return

::!essystin::
SendInput, esxcli system stats installtime
Return

::!essystinge::
SendInput, esxcli system stats installtime get
Return

::!essystup::
SendInput, esxcli system stats uptime
Return

::!essystupge::
SendInput, esxcli system stats uptime get
Return

::!essysy::
SendInput, esxcli system syslog
Return

::!essysyco::
SendInput, esxcli system syslog config
Return

::!essysycoge::
SendInput, esxcli system syslog config get
Return

::!essysycolo::
SendInput, esxcli system syslog config logger
Return

::!essysycololi::
SendInput, esxcli system syslog config logger list
Return

::!essysycolose::
SendInput, esxcli system syslog config logger set
Return

::!essysycose::
SendInput, esxcli system syslog config set
Return

::!essysyma::
SendInput, esxcli system syslog mark
Return

::!essysyre::
SendInput, esxcli system syslog reload
Return

::!essyti::
SendInput, esxcli system time
Return

::!essytige::
SendInput, esxcli system time get
Return

::!essytise::
SendInput, esxcli system time set
Return

::!essyuu::
SendInput, esxcli system uuid
Return

::!essyuuge::
SendInput, esxcli system uuid get
Return

::!essyve::
SendInput, esxcli system version
Return

::!essyvege::
SendInput, esxcli system version get
Return

::!essyvi::
SendInput, esxcli system visorfs
Return

::!essyvige::
SendInput, esxcli system visorfs get
Return

::!essyvira::
SendInput, esxcli system visorfs ramdisk
Return

::!essyviraad::
SendInput, esxcli system visorfs ramdisk add
Return

::!essyvirali::
SendInput, esxcli system visorfs ramdisk list
Return

::!essyvirare::
SendInput, esxcli system visorfs ramdisk remove
Return

::!essyvita::
SendInput, esxcli system visorfs tardisk
Return

::!essyvitali::
SendInput, esxcli system visorfs tardisk list
Return

::!essywb::
SendInput, esxcli system wbem
Return

::!essywbge::
SendInput, esxcli system wbem get
Return

::!essywbpr::
SendInput, esxcli system wbem provider
Return

::!essywbprli::
SendInput, esxcli system wbem provider list
Return

::!essywbprse::
SendInput, esxcli system wbem provider set
Return

::!essywbse::
SendInput, esxcli system wbem set
Return

::!essywe::
SendInput, esxcli system welcomemsg
Return

::!essywege::
SendInput, esxcli system welcomemsg get
Return

::!essywese::
SendInput, esxcli system welcomemsg set
Return

::!esvm::
SendInput, esxcli vm
Return

::!esvmpr::
SendInput, esxcli vm process
Return

::!esvmprki::
SendInput, esxcli vm process kill
Return

::!esvmprli::
SendInput, esxcli vm process list
Return

::!esvs::
SendInput, esxcli vsan
Return

::!esvscl::
SendInput, esxcli vsan cluster
Return

::!esvsclge::
SendInput, esxcli vsan cluster get
Return

::!esvscljo::
SendInput, esxcli vsan cluster join
Return

::!esvsclle::
SendInput, esxcli vsan cluster leave
Return

::!esvsclne::
SendInput, esxcli vsan cluster new
Return

::!esvsclpr::
SendInput, esxcli vsan cluster preferredfaultdomain
Return

::!esvsclprge::
SendInput, esxcli vsan cluster preferredfaultdomain get
Return

::!esvsclprse::
SendInput, esxcli vsan cluster preferredfaultdomain set
Return

::!esvsclre::
SendInput, esxcli vsan cluster restore
Return

::!esvsclun::
SendInput, esxcli vsan cluster unicastagent
Return

::!esvsclunad::
SendInput, esxcli vsan cluster unicastagent add
Return

::!esvscluncl::
SendInput, esxcli vsan cluster unicastagent clear
Return

::!esvsclunli::
SendInput, esxcli vsan cluster unicastagent list
Return

::!esvsclunre::
SendInput, esxcli vsan cluster unicastagent remove
Return

::!esvscm::
SendInput, esxcli vsan cmmds
Return

::!esvscmti::
SendInput, esxcli vsan cmmds timemachine
Return

::!esvscmtige::
SendInput, esxcli vsan cmmds timemachine get
Return

::!esvscmtise::
SendInput, esxcli vsan cmmds timemachine set
Return

::!esvsdaar::
SendInput, esxcli vsan dataprotection archival
Return

::!esvsdaarst::
SendInput, esxcli vsan dataprotection archival storage
Return

::!esvsdaarstli::
SendInput, esxcli vsan dataprotection archival storage list
Return

::!esvsdaarstre::
SendInput, esxcli vsan dataprotection archival storage register
Return

::!esvsdaarstun::
SendInput, esxcli vsan dataprotection archival storage unregister
Return

::!esvsdacg::
SendInput, esxcli vsan dataprotection cg
Return

::!esvsdacgge::
SendInput, esxcli vsan dataprotection cg get
Return

::!esvsdalo::
SendInput, esxcli vsan dataprotection local
Return

::!esvsdalost::
SendInput, esxcli vsan dataprotection local storage
Return

::!esvsdalostus::
SendInput, esxcli vsan dataprotection local storage usage
Return

::!esvsdalostusge::
SendInput, esxcli vsan dataprotection local storage usage get
Return

::!esvsdalostusse::
SendInput, esxcli vsan dataprotection local storage usage set
Return

::!esvsdaor::
SendInput, esxcli vsan dataprotection orphanedobjects
Return

::!esvsdaorsc::
SendInput, esxcli vsan dataprotection orphanedobjects scan
Return

::!esvsdareop::
SendInput, esxcli vsan dataprotection recovery op
Return

::!esvsdareopge::
SendInput, esxcli vsan dataprotection recovery op get
Return

::!esvsdareopli::
SendInput, esxcli vsan dataprotection recovery op list
Return

::!esvsdarevm::
SendInput, esxcli vsan dataprotection recovery vm
Return

::!esvsdarevmst::
SendInput, esxcli vsan dataprotection recovery vm start
Return

::!esvsdaad::
SendInput, esxcli vsan datastore add
Return

::!esvsdacl::
SendInput, esxcli vsan datastore clear
Return

::!esvsdali::
SendInput, esxcli vsan datastore list
Return

::!esvsdana::
SendInput, esxcli vsan datastore name
Return

::!esvsdanage::
SendInput, esxcli vsan datastore name get
Return

::!esvsdanase::
SendInput, esxcli vsan datastore name set
Return

::!esvsde::
SendInput, esxcli vsan debug
Return

::!esvsdeco::
SendInput, esxcli vsan debug controller
Return

::!esvsdecoli::
SendInput, esxcli vsan debug controller list
Return

::!esvsdedi::
SendInput, esxcli vsan debug disk
Return

::!esvsdedili::
SendInput, esxcli vsan debug disk list
Return

::!esvsdediov::
SendInput, esxcli vsan debug disk overview
Return

::!esvsdedisu::
SendInput, esxcli vsan debug disk summary
Return

::!esvsdedisuge::
SendInput, esxcli vsan debug disk summary get
Return

::!esvsdeev::
SendInput, esxcli vsan debug evacuation
Return

::!esvsdeevpr::
SendInput, esxcli vsan debug evacuation precheck
Return

::!esvsdeli::
SendInput, esxcli vsan debug limit
Return

::!esvsdelige::
SendInput, esxcli vsan debug limit get
Return

::!esvsdeme::
SendInput, esxcli vsan debug memory
Return

::!esvsdemeli::
SendInput, esxcli vsan debug memory list
Return

::!esvsdemo::
SendInput, esxcli vsan debug mob
Return

::!esvsdeob::
SendInput, esxcli vsan debug object
Return

::!esvsdeobhe::
SendInput, esxcli vsan debug object health
Return

::!esvsdeobhesu::
SendInput, esxcli vsan debug object health summary
Return

::!esvsdeobhesuge::
SendInput, esxcli vsan debug object health summary get
Return

::!esvsdeobli::
SendInput, esxcli vsan debug object list
Return

::!esvsdeobov::
SendInput, esxcli vsan debug object overview
Return

::!esvsdere::
SendInput, esxcli vsan debug resync
Return

::!esvsdereli::
SendInput, esxcli vsan debug resync list
Return

::!esvsderesu::
SendInput, esxcli vsan debug resync summary
Return

::!esvsderesuge::
SendInput, esxcli vsan debug resync summary get
Return

::!esvsdevm::
SendInput, esxcli vsan debug vmdk
Return

::!esvsdevmli::
SendInput, esxcli vsan debug vmdk list
Return

::!esvsfa::
SendInput, esxcli vsan faultdomain
Return

::!esvsfage::
SendInput, esxcli vsan faultdomain get
Return

::!esvsfare::
SendInput, esxcli vsan faultdomain reset
Return

::!esvsfase::
SendInput, esxcli vsan faultdomain set
Return

::!esvshe::
SendInput, esxcli vsan health
Return

::!esvshecl::
SendInput, esxcli vsan health cluster
Return

::!esvsheclge::
SendInput, esxcli vsan health cluster get
Return

::!esvsheclli::
SendInput, esxcli vsan health cluster list
Return

::!esvsis::
SendInput, esxcli vsan iscsi
Return

::!esvsisde::
SendInput, esxcli vsan iscsi defaultconfig
Return

::!esvsisdege::
SendInput, esxcli vsan iscsi defaultconfig get
Return

::!esvsisdese::
SendInput, esxcli vsan iscsi defaultconfig set
Return

::!esvsisho::
SendInput, esxcli vsan iscsi homeobject
Return

::!esvsishocr::
SendInput, esxcli vsan iscsi homeobject create
Return

::!esvsishode::
SendInput, esxcli vsan iscsi homeobject delete
Return

::!esvsishoge::
SendInput, esxcli vsan iscsi homeobject get
Return

::!esvsishose::
SendInput, esxcli vsan iscsi homeobject set
Return

::!esvsisin::
SendInput, esxcli vsan iscsi initiatorgroup
Return

::!esvsisinad::
SendInput, esxcli vsan iscsi initiatorgroup add
Return

::!esvsisinge::
SendInput, esxcli vsan iscsi initiatorgroup get
Return

::!esvsisinin::
SendInput, esxcli vsan iscsi initiatorgroup initiator
Return

::!esvsisininad::
SendInput, esxcli vsan iscsi initiatorgroup initiator add
Return

::!esvsisininre::
SendInput, esxcli vsan iscsi initiatorgroup initiator remove
Return

::!esvsisinli::
SendInput, esxcli vsan iscsi initiatorgroup list
Return

::!esvsisinre::
SendInput, esxcli vsan iscsi initiatorgroup remove
Return

::!esvsisst::
SendInput, esxcli vsan iscsi status
Return

::!esvsisstge::
SendInput, esxcli vsan iscsi status get
Return

::!esvsisstse::
SendInput, esxcli vsan iscsi status set
Return

::!esvsista::
SendInput, esxcli vsan iscsi target
Return

::!esvsistaad::
SendInput, esxcli vsan iscsi target add
Return

::!esvsistage::
SendInput, esxcli vsan iscsi target get
Return

::!esvsistali::
SendInput, esxcli vsan iscsi target list
Return

::!esvsistalu::
SendInput, esxcli vsan iscsi target lun
Return

::!esvsistaluad::
SendInput, esxcli vsan iscsi target lun add
Return

::!esvsistaluge::
SendInput, esxcli vsan iscsi target lun get
Return

::!esvsistaluli::
SendInput, esxcli vsan iscsi target lun list
Return

::!esvsistalure::
SendInput, esxcli vsan iscsi target lun remove
Return

::!esvsistaluse::
SendInput, esxcli vsan iscsi target lun set
Return

::!esvsistare::
SendInput, esxcli vsan iscsi target remove
Return

::!esvsistase::
SendInput, esxcli vsan iscsi target set
Return

::!esvsma::
SendInput, esxcli vsan maintenancemode
Return

::!esvsmaca::
SendInput, esxcli vsan maintenancemode cancel
Return

::!esvsne::
SendInput, esxcli vsan network
Return

::!esvsnecl::
SendInput, esxcli vsan network clear
Return

::!esvsneli::
SendInput, esxcli vsan network list
Return

::!esvspe::
SendInput, esxcli vsan perf
Return

::!esvspedi::
SendInput, esxcli vsan perf diagnostic
Return

::!esvspedige::
SendInput, esxcli vsan perf diagnostic get
Return

::!esvspedise::
SendInput, esxcli vsan perf diagnostic set
Return

::!esvspege::
SendInput, esxcli vsan perf get
Return

::!esvspese::
SendInput, esxcli vsan perf set
Return

::!esvspo::
SendInput, esxcli vsan policy
Return

::!esvspocl::
SendInput, esxcli vsan policy cleardefault
Return

::!esvspoge::
SendInput, esxcli vsan policy getdefault
Return

::!esvspose::
SendInput, esxcli vsan policy setdefault
Return

::!esvsre::
SendInput, esxcli vsan resync
Return

::!esvsreba::
SendInput, esxcli vsan resync bandwidth
Return

::!esvsrebage::
SendInput, esxcli vsan resync bandwidth get
Return

::!esvsreth::
SendInput, esxcli vsan resync throttle
Return

::!esvsrethge::
SendInput, esxcli vsan resync throttle get
Return

::!esvsrethse::
SendInput, esxcli vsan resync throttle set
Return

::!esvsst::
SendInput, esxcli vsan storage
Return

::!esvsstad::
SendInput, esxcli vsan storage add
Return

::!esvsstau::
SendInput, esxcli vsan storage automode
Return

::!esvsstauge::
SendInput, esxcli vsan storage automode get
Return

::!esvsstause::
SendInput, esxcli vsan storage automode set
Return

::!esvsstdi::
SendInput, esxcli vsan storage diskgroup
Return

::!esvsstdimo::
SendInput, esxcli vsan storage diskgroup mount
Return

::!esvsstdire::
SendInput, esxcli vsan storage diskgroup rebuild
Return

::!esvsstdiun::
SendInput, esxcli vsan storage diskgroup unmount
Return

::!esvsstli::
SendInput, esxcli vsan storage list
Return

::!esvsstre::
SendInput, esxcli vsan storage remove
Return

::!esvsstta::
SendInput, esxcli vsan storage tag
Return

::!esvssttaad::
SendInput, esxcli vsan storage tag add
Return

::!esvssttare::
SendInput, esxcli vsan storage tag remove
Return

::!esvstr::
SendInput, esxcli vsan trace
Return

::!esvstrge::
SendInput, esxcli vsan trace get
Return

::!esvstrse::
SendInput, esxcli vsan trace set
Return

::!esfcnidi::
cmdChoiceGui(["esxcli fcoe nic disable", "esxcli fcoe nic discover"])
Return

::!esisaddist::
cmdChoiceGui(["esxcli iscsi adapter discovery statictarget", "esxcli iscsi adapter discovery status"])
Return

::!esisneip::
cmdChoiceGui(["esxcli iscsi networkportal ipconfig", "esxcli iscsi networkportal ipv6config"])
Return

::!esisneipge::
cmdChoiceGui(["esxcli iscsi networkportal ipconfig get", "esxcli iscsi networkportal ipv6config get"])
Return

::!esisneipse::
cmdChoiceGui(["esxcli iscsi networkportal ipconfig set", "esxcli iscsi networkportal ipv6config set"])
Return

::!esneipdnse::
cmdChoiceGui(["esxcli network ip dns search", "esxcli network ip dns server"])
Return

::!esneipdnsead::
cmdChoiceGui(["esxcli network ip dns search add", "esxcli network ip dns server add"])
Return

::!esneipdnseli::
cmdChoiceGui(["esxcli network ip dns search list", "esxcli network ip dns server list"])
Return

::!esneipdnsere::
cmdChoiceGui(["esxcli network ip dns search remove", "esxcli network ip dns server remove"])
Return

::!esneipinip::
cmdChoiceGui(["esxcli network ip interface ipv4", "esxcli network ip interface ipv6"])
Return

::!esneipinipad::
cmdChoiceGui(["esxcli network ip interface ipv4 address", "esxcli network ip interface ipv6 address"])
Return

::!esneipinipadli::
cmdChoiceGui(["esxcli network ip interface ipv4 address list", "esxcli network ip interface ipv6 address list"])
Return

::!esneipinipge::
cmdChoiceGui(["esxcli network ip interface ipv4 get", "esxcli network ip interface ipv6 get"])
Return

::!esneipinipse::
cmdChoiceGui(["esxcli network ip interface ipv4 set", "esxcli network ip interface ipv6 set"])
Return

::!esneipne::
cmdChoiceGui(["esxcli network ip neighbor", "esxcli network ip netstack"])
Return

::!esneipneli::
cmdChoiceGui(["esxcli network ip neighbor list", "esxcli network ip netstack list"])
Return

::!esneipnere::
cmdChoiceGui(["esxcli network ip neighbor remove", "esxcli network ip netstack remove"])
Return

::!esneiproip::
cmdChoiceGui(["esxcli network ip route ipv4", "esxcli network ip route ipv6"])
Return

::!esneiproipad::
cmdChoiceGui(["esxcli network ip route ipv4 add", "esxcli network ip route ipv6 add"])
Return

::!esneiproipli::
cmdChoiceGui(["esxcli network ip route ipv4 list", "esxcli network ip route ipv6 list"])
Return

::!esneiproipre::
cmdChoiceGui(["esxcli network ip route ipv4 remove", "esxcli network ip route ipv6 remove"])
Return

::!esnenise::
cmdChoiceGui(["esxcli network nic selftest", "esxcli network nic set"])
Return

::!esnevsdvvmlast::
cmdChoiceGui(["esxcli network vswitch dvs vmware lacp stats", "esxcli network vswitch dvs vmware lacp status"])
Return

::!esnevsdvvmlastge::
cmdChoiceGui(["esxcli network vswitch dvs vmware lacp stats get", "esxcli network vswitch dvs vmware lacp status get"])
Return

::!esnevsstpo::
cmdChoiceGui(["esxcli network vswitch standard policy", "esxcli network vswitch standard portgroup"])
Return

::!esnevsstpose::
cmdChoiceGui(["esxcli network vswitch standard policy security", "esxcli network vswitch standard portgroup set"])
Return

::!esnvdenade::
cmdChoiceGui(["esxcli nvme device namespace delete", "esxcli nvme device namespace detach"])
Return

::!esstcocl::
cmdChoiceGui(["esxcli storage core claiming", "esxcli storage core claimrule"])
Return

::!esstcoclre::
cmdChoiceGui(["esxcli storage core claiming reclaim", "esxcli storage core claimrule remove"])
Return

::!esstcodese::
cmdChoiceGui(["esxcli storage core device set", "esxcli storage core device setconfig"])
Return

::!esstnf::
cmdChoiceGui(["esxcli storage nfs", "esxcli storage nfs41"])
Return

::!esstnfad::
cmdChoiceGui(["esxcli storage nfs add", "esxcli storage nfs41 add"])
Return

::!esstnfli::
cmdChoiceGui(["esxcli storage nfs list", "esxcli storage nfs41 list"])
Return

::!esstnfpa::
cmdChoiceGui(["esxcli storage nfs param", "esxcli storage nfs41 param"])
Return

::!esstnfpage::
cmdChoiceGui(["esxcli storage nfs param get", "esxcli storage nfs41 param get"])
Return

::!esstnfpase::
cmdChoiceGui(["esxcli storage nfs param set", "esxcli storage nfs41 param set"])
Return

::!esstnfre::
cmdChoiceGui(["esxcli storage nfs remove", "esxcli storage nfs41 remove"])
Return

::!esstsafc::
cmdChoiceGui(["esxcli storage san fc", "esxcli storage san fcoe"])
Return

::!esstsafcli::
cmdChoiceGui(["esxcli storage san fc list", "esxcli storage san fcoe list"])
Return

::!esstsafcre::
cmdChoiceGui(["esxcli storage san fc reset", "esxcli storage san fcoe reset"])
Return

::!esstsafcst::
cmdChoiceGui(["esxcli storage san fc stats", "esxcli storage san fcoe stats"])
Return

::!esstsafcstge::
cmdChoiceGui(["esxcli storage san fc stats get", "esxcli storage san fcoe stats get"])
Return

::!esstvvva::
cmdChoiceGui(["esxcli storage vvol vasacontext", "esxcli storage vvol vasaprovider"])
Return

::!essyse::
cmdChoiceGui(["esxcli system secpolicy", "esxcli system security", "esxcli system settings"])
Return

::!essyseke::
cmdChoiceGui(["esxcli system settings kernel", "esxcli system settings keyboard"])
Return

::!esvsda::
cmdChoiceGui(["esxcli vsan dataprotection", "esxcli vsan datastore"])
Return

::!esvsdare::
cmdChoiceGui(["esxcli vsan dataprotection recovery", "esxcli vsan datastore remove"])
Return

::!esvsdemost::
cmdChoiceGui(["esxcli vsan debug mob start", "esxcli vsan debug mob status", "esxcli vsan debug mob stop"])
Return

::!esvsneip::
cmdChoiceGui(["esxcli vsan network ip", "esxcli vsan network ipv4"])
Return

::!esvsneipad::
cmdChoiceGui(["esxcli vsan network ip add", "esxcli vsan network ipv4 add"])
Return

::!esvsneipre::
cmdChoiceGui(["esxcli vsan network ip remove", "esxcli vsan network ipv4 remove"])
Return

::!esvsneipse::
cmdChoiceGui(["esxcli vsan network ip set", "esxcli vsan network ipv4 set"])
Return

::!esvsnere::
cmdChoiceGui(["esxcli vsan network remove", "esxcli vsan network restore"])
Return