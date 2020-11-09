.class public LFragments/Tab2;
.super Landroid/support/v4/app/Fragment;
.source "Tab2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/Tab2$AsyncScheduleTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tab2"


# instance fields
.field btn_scedule:Landroid/widget/Button;

.field context:Landroid/content/Context;

.field currDate:Ljava/util/Date;

.field private dimmerStatus:Ljava/lang/String;

.field dimmerValueSend:Ljava/lang/String;

.field edittxt_hour:Landroid/widget/EditText;

.field edittxt_min:Landroid/widget/EditText;

.field formattedDate:Ljava/lang/String;

.field hourTime:Ljava/lang/String;

.field private layoutDimmer:Landroid/widget/LinearLayout;

.field private mRoomName:Ljava/lang/String;

.field private mScheduletime:Ljava/lang/String;

.field mSwitchID:Ljava/lang/String;

.field private mSwitchStatus:Ljava/lang/String;

.field mUserID:Ljava/lang/String;

.field mapList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messageType:Ljava/lang/String;

.field minTime:Ljava/lang/String;

.field myFormat:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field private rbLockOff:Landroid/widget/RadioButton;

.field private rbLockOn:Landroid/widget/RadioButton;

.field private rbSwitchOff:Landroid/widget/RadioButton;

.field private rbSwitchOn:Landroid/widget/RadioButton;

.field private rgLock:Landroid/widget/RadioGroup;

.field private rgSwitch:Landroid/widget/RadioGroup;

.field sdf:Ljava/text/SimpleDateFormat;

.field seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

.field private session:LSession/SessionManager;

.field private switchName:Ljava/lang/String;

.field txtText:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, LFragments/Tab2;->mSwitchID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LFragments/Tab2;->mUserID:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, LFragments/Tab2;->messageType:Ljava/lang/String;

    .line 87
    const-string v0, "0"

    iput-object v0, p0, LFragments/Tab2;->dimmerValueSend:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(LFragments/Tab2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab2;

    .prologue
    .line 60
    iget-object v0, p0, LFragments/Tab2;->dimmerStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(LFragments/Tab2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Tab2;

    .prologue
    .line 60
    iget-object v0, p0, LFragments/Tab2;->layoutDimmer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(LFragments/Tab2;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # LFragments/Tab2;

    .prologue
    .line 60
    iget-object v0, p0, LFragments/Tab2;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(LFragments/Tab2;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # LFragments/Tab2;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 60
    iput-object p1, p0, LFragments/Tab2;->pDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(LFragments/Tab2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab2;

    .prologue
    .line 60
    iget-object v0, p0, LFragments/Tab2;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(LFragments/Tab2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # LFragments/Tab2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, LFragments/Tab2;->messageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(LFragments/Tab2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LFragments/Tab2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, LFragments/Tab2;->parseResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calulateTimeDiff(Ljava/lang/String;)J
    .locals 12
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, "d1":Ljava/util/Date;
    const/4 v2, 0x0

    .line 445
    .local v2, "d2":Ljava/util/Date;
    const-wide/16 v4, 0x0

    .line 446
    .local v4, "diff":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 447
    .local v0, "calander":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 448
    .local v3, "formatS":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "stopDate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 452
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 454
    const-string v7, "Start Time"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v7, "Stop Time"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 458
    const-string v7, "Diff..."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-wide v4

    .line 460
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private onClickOfSetTimer()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x0

    .line 248
    const-string v5, ""

    .line 249
    .local v5, "mLockStatus":Ljava/lang/String;
    iget-object v9, p0, LFragments/Tab2;->rgSwitch:Landroid/widget/RadioGroup;

    const v10, 0x7f0d0110

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    const-string v9, "1"

    iput-object v9, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    .line 252
    :cond_0
    iget-object v9, p0, LFragments/Tab2;->rgSwitch:Landroid/widget/RadioGroup;

    const v10, 0x7f0d0111

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 253
    const-string v9, "0"

    iput-object v9, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    .line 256
    :cond_1
    iget-object v9, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 257
    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-string v10, "Kindly select one of operation."

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 320
    :goto_0
    return-void

    .line 261
    :cond_2
    iget-object v9, p0, LFragments/Tab2;->edittxt_hour:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 262
    iget-object v9, p0, LFragments/Tab2;->context:Landroid/content/Context;

    const-string v10, "Kindly select hour."

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v9, p0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 267
    iget-object v9, p0, LFragments/Tab2;->context:Landroid/content/Context;

    const-string v10, "Kindly select min."

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 270
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 271
    .local v0, "c":Ljava/util/Calendar;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current time => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, "df":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:00"

    invoke-direct {v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "df1":Ljava/text/SimpleDateFormat;
    iget-object v9, p0, LFragments/Tab2;->edittxt_hour:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "hourtime":Ljava/lang/String;
    iget-object v9, p0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "mintime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 281
    .local v7, "now":Ljava/util/Calendar;
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 282
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v13, v9}, Ljava/util/Calendar;->add(II)V

    .line 284
    :cond_5
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 285
    const/16 v9, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 288
    :cond_6
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, LFragments/Tab2;->mScheduletime:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, LFragments/Tab2;->formattedDate:Ljava/lang/String;

    .line 292
    iget-object v9, p0, LFragments/Tab2;->edittxt_hour:Landroid/widget/EditText;

    iget-object v10, p0, LFragments/Tab2;->edittxt_hour:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v9, p0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    iget-object v10, p0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 297
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 298
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, LFragments/Tab2;->hourTime:Ljava/lang/String;

    .line 300
    iget-object v9, p0, LFragments/Tab2;->dimmerStatus:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 301
    iget-object v9, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 302
    iget-object v9, p0, LFragments/Tab2;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v9}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v9

    if-gt v9, v13, :cond_7

    .line 303
    iget-object v9, p0, LFragments/Tab2;->context:Landroid/content/Context;

    const-string v10, "Kindly raise dimmer value greater than 10"

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    :cond_7
    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 310
    iget-object v9, p0, LFragments/Tab2;->session:LSession/SessionManager;

    invoke-virtual {v9}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DemoUser"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 311
    invoke-direct {p0}, LFragments/Tab2;->setSchedularData()V

    goto/16 :goto_0

    .line 313
    :cond_8
    new-instance v9, LFragments/Tab2$AsyncScheduleTask;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, LFragments/Tab2$AsyncScheduleTask;-><init>(LFragments/Tab2;LFragments/Tab2$1;)V

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    iget-object v11, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, LFragments/Tab2;->mScheduletime:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, LFragments/Tab2$AsyncScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 316
    :cond_9
    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {p0}, LFragments/Tab2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060079

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private parseResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "dimmerValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 393
    if-eqz p1, :cond_2

    .line 395
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    iget-object v5, p0, LFragments/Tab2;->messageType:Ljava/lang/String;

    const-string v6, "Internet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 399
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/iot/engine/AddNewTask;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "SwitchInfo"

    iget-object v6, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    const-string v5, "Operation"

    const-string v6, "ADD"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v1}, LFragments/Tab2;->startActivity(Landroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 406
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 407
    .local v3, "jResult":Lorg/json/JSONObject;
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v5, p0, LFragments/Tab2;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v4, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "SwitchID"

    iget-object v6, p0, LFragments/Tab2;->mSwitchID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v5, "SwitchName"

    iget-object v6, p0, LFragments/Tab2;->switchName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v5, "Schedule_dates"

    iget-object v6, p0, LFragments/Tab2;->formattedDate:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v5, "SwitchStatus"

    iget-object v6, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v5, "Time"

    iget-object v6, p0, LFragments/Tab2;->hourTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v5, "RoomName"

    iget-object v6, p0, LFragments/Tab2;->mRoomName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v5, "schedule_id"

    const-string v6, "scheduleSwitchId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v5, "DimmerValue"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v5, "DimmerStatus"

    iget-object v6, p0, LFragments/Tab2;->dimmerStatus:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {v0, v4}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    .line 421
    iget-object v5, p0, LFragments/Tab2;->context:Landroid/content/Context;

    invoke-virtual {p0}, LFragments/Tab2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 422
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/iot/engine/AddNewTask;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "SwitchInfo"

    iget-object v6, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 424
    const-string v5, "Operation"

    const-string v6, "ADD"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v1}, LFragments/Tab2;->startActivity(Landroid/content/Intent;)V

    .line 427
    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 439
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "jResult":Lorg/json/JSONObject;
    .end local v4    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 431
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, LFragments/Tab2;->context:Landroid/content/Context;

    const-string v6, "msg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    .end local v2    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 437
    :cond_2
    iget-object v5, p0, LFragments/Tab2;->context:Landroid/content/Context;

    invoke-virtual {p0}, LFragments/Tab2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setSchedularData()V
    .locals 6

    .prologue
    .line 322
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v2, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "SwitchID"

    iget-object v4, p0, LFragments/Tab2;->mSwitchID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v3, "SwitchName"

    iget-object v4, p0, LFragments/Tab2;->switchName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v3, "Schedule_dates"

    iget-object v4, p0, LFragments/Tab2;->formattedDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v3, "SwitchStatus"

    iget-object v4, p0, LFragments/Tab2;->mSwitchStatus:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v3, "Time"

    iget-object v4, p0, LFragments/Tab2;->hourTime:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v3, "RoomName"

    iget-object v4, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v5, "RoomName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v3, "IP"

    iget-object v4, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v5, "IP"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v3, p0, LFragments/Tab2;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, "db":LDatabase/DatabaseHandler;
    invoke-virtual {v0, v2}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    .line 339
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/iot/engine/AddNewTask;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "SwitchInfo"

    iget-object v4, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v1}, LFragments/Tab2;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-direct {p0}, LFragments/Tab2;->onClickOfSetTimer()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x7f0d011e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 94
    const v2, 0x7f0400b4

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    .line 95
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, LFragments/Tab2;->context:Landroid/content/Context;

    .line 96
    new-instance v2, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, LFragments/Tab2;->session:LSession/SessionManager;

    .line 97
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, LFragments/Tab2;->btn_scedule:Landroid/widget/Button;

    .line 98
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d0264

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, LFragments/Tab2;->edittxt_hour:Landroid/widget/EditText;

    .line 99
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d0265

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    .line 101
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d010f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, LFragments/Tab2;->rgSwitch:Landroid/widget/RadioGroup;

    .line 104
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d0112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, LFragments/Tab2;->layoutDimmer:Landroid/widget/LinearLayout;

    .line 105
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d0114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput-object v2, p0, LFragments/Tab2;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 107
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d0110

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, LFragments/Tab2;->rbSwitchOn:Landroid/widget/RadioButton;

    .line 108
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d0111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, LFragments/Tab2;->rbSwitchOff:Landroid/widget/RadioButton;

    .line 109
    invoke-virtual {p0}, LFragments/Tab2;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SwitchInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    .line 110
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    const v3, 0x7f0d0109

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, LFragments/Tab2;->txtText:Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v3, "DimmerStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, LFragments/Tab2;->dimmerStatus:Ljava/lang/String;

    .line 113
    iget-object v2, p0, LFragments/Tab2;->dimmerStatus:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, LFragments/Tab2;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :try_start_0
    iget-object v2, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v3, "DimmerValue"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "dimmervalueset":I
    iget-object v2, p0, LFragments/Tab2;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    mul-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0x4b

    invoke-virtual {v2, v3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "dimmervalueset":I
    :goto_0
    iget-object v2, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v3, "SwitchName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, LFragments/Tab2;->switchName:Ljava/lang/String;

    .line 125
    iget-object v3, p0, LFragments/Tab2;->txtText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "What do you want "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v5, "SwitchName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to do? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v3, "RoomName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, LFragments/Tab2;->mRoomName:Ljava/lang/String;

    .line 129
    iget-object v2, p0, LFragments/Tab2;->btn_scedule:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, LFragments/Tab2;->edittxt_hour:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 131
    iget-object v2, p0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 133
    iget-object v2, p0, LFragments/Tab2;->edittxt_hour:Landroid/widget/EditText;

    new-instance v3, LFragments/Tab2$1;

    invoke-direct {v3, p0}, LFragments/Tab2$1;-><init>(LFragments/Tab2;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    new-instance v3, LFragments/Tab2$2;

    invoke-direct {v3, p0}, LFragments/Tab2$2;-><init>(LFragments/Tab2;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, LFragments/Tab2;->rgSwitch:Landroid/widget/RadioGroup;

    new-instance v3, LFragments/Tab2$3;

    invoke-direct {v3, p0}, LFragments/Tab2$3;-><init>(LFragments/Tab2;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 169
    iget-object v2, p0, LFragments/Tab2;->mapList:Ljava/util/HashMap;

    const-string v3, "SwitchID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, LFragments/Tab2;->mSwitchID:Ljava/lang/String;

    .line 170
    iget-object v2, p0, LFragments/Tab2;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LFragments/Tab2;->mUserID:Ljava/lang/String;

    .line 173
    iget-object v2, p0, LFragments/Tab2;->view:Landroid/view/View;

    return-object v2

    .line 118
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, LFragments/Tab2;->layoutDimmer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 234
    return-void
.end method

.method public showHour(ILjava/lang/String;)V
    .locals 7
    .param p1, "maxval"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 176
    iget-object v4, p0, LFragments/Tab2;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 177
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040089

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, "dialoglayout":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, LFragments/Tab2;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    const v4, 0x7f0d01fb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 181
    .local v3, "np":Landroid/widget/NumberPicker;
    invoke-virtual {v3, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 182
    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 183
    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 184
    invoke-virtual {v3, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 185
    const-string v4, "<p style=\"color:orange;\">Set</p>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    new-instance v5, LFragments/Tab2$4;

    invoke-direct {v5, p0, v3}, LFragments/Tab2$4;-><init>(LFragments/Tab2;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    const-string v4, "<p style=\"color:orange;\">Cancel</p>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    new-instance v5, LFragments/Tab2$5;

    invoke-direct {v5, p0}, LFragments/Tab2$5;-><init>(LFragments/Tab2;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 201
    return-void
.end method

.method public showMin(ILjava/lang/String;)V
    .locals 7
    .param p1, "maxval"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 204
    iget-object v4, p0, LFragments/Tab2;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 205
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040089

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, "dialoglayout":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, LFragments/Tab2;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 208
    const v4, 0x7f0d01fb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 209
    .local v3, "np":Landroid/widget/NumberPicker;
    invoke-virtual {v3, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 210
    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 211
    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 212
    invoke-virtual {v3, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 214
    const-string v4, "<p style=\"color:orange;\">Set</p>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    new-instance v5, LFragments/Tab2$6;

    invoke-direct {v5, p0, v3}, LFragments/Tab2$6;-><init>(LFragments/Tab2;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    const-string v4, "<p style=\"color:orange;\">Cancel</p>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    new-instance v5, LFragments/Tab2$7;

    invoke-direct {v5, p0}, LFragments/Tab2$7;-><init>(LFragments/Tab2;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 231
    return-void
.end method
