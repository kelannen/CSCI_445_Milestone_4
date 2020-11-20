.class public LFragments/Tab1;
.super Landroid/support/v4/app/Fragment;
.source "Tab1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/Tab1$AsyncEditScheduleTask;,
        LFragments/Tab1$AsyncScheduleTask;
    }
.end annotation


# static fields
.field static final RQS_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Tab1"


# instance fields
.field private arrRepeatFlag:[Ljava/lang/String;

.field btn_scedule:Landroid/widget/Button;

.field private cbRepeat:Landroid/widget/CheckBox;

.field context:Landroid/content/Context;

.field date:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private db:LDatabase/DatabaseHandler;

.field private dimmerStatus:Ljava/lang/String;

.field edittxt_date:Landroid/widget/EditText;

.field edittxt_time:Landroid/widget/EditText;

.field hours:Ljava/lang/Integer;

.field imgBack:Landroid/widget/ImageView;

.field private isRepeatFlag:Ljava/lang/String;

.field private layoutDimmer:Landroid/widget/LinearLayout;

.field private llDays:Landroid/widget/LinearLayout;

.field private mOpeartion:Ljava/lang/String;

.field private mRoomName:Ljava/lang/String;

.field private mScheduleId:Ljava/lang/String;

.field private mScheduleTimeOnly:Ljava/lang/String;

.field private mScheduledate:Ljava/lang/String;

.field private mScheduletime:Ljava/lang/String;

.field private mSwitchID:Ljava/lang/String;

.field private mSwitchStatus:Ljava/lang/String;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mUserID:Ljava/lang/String;

.field private mapList:Ljava/util/HashMap;
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

.field private mapListEdit:Ljava/util/HashMap;
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

.field minutes:Ljava/lang/Integer;

.field myCalendar:Ljava/util/Calendar;

.field private pDialog:Landroid/app/ProgressDialog;

.field private rbLockOff:Landroid/widget/RadioButton;

.field private rbLockOn:Landroid/widget/RadioButton;

.field private rbSwitchOff:Landroid/widget/RadioButton;

.field private rbSwitchOn:Landroid/widget/RadioButton;

.field private rgLock:Landroid/widget/RadioGroup;

.field private rgSwitch:Landroid/widget/RadioGroup;

.field seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

.field private session:LSession/SessionManager;

.field private switchname:Ljava/lang/String;

.field textViewArray:[Ljava/lang/String;

.field private textViews:[Landroid/widget/TextView;

.field private tvFri:Landroid/widget/TextView;

.field private tvMon:Landroid/widget/TextView;

.field private tvSat:Landroid/widget/TextView;

.field private tvSun:Landroid/widget/TextView;

.field private tvTha:Landroid/widget/TextView;

.field private tvTue:Landroid/widget/TextView;

.field private tvWeb:Landroid/widget/TextView;

.field private txtText:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, LFragments/Tab1;->myCalendar:Ljava/util/Calendar;

    .line 82
    const-string v0, ""

    iput-object v0, p0, LFragments/Tab1;->mSwitchID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LFragments/Tab1;->mUserID:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, LFragments/Tab1;->messageType:Ljava/lang/String;

    .line 100
    const-string v0, "NA"

    iput-object v0, p0, LFragments/Tab1;->isRepeatFlag:Ljava/lang/String;

    .line 102
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v5

    const-string v1, "1"

    aput-object v1, v0, v6

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1"

    aput-object v2, v0, v1

    iput-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    .line 103
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "tvSun"

    aput-object v1, v0, v4

    const-string v1, "tvMon"

    aput-object v1, v0, v5

    const-string v1, "tvTue"

    aput-object v1, v0, v6

    const-string v1, "tvWeb"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "tvTha"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tvFri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tvSat"

    aput-object v2, v0, v1

    iput-object v0, p0, LFragments/Tab1;->textViewArray:[Ljava/lang/String;

    .line 104
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Tab1;->textViews:[Landroid/widget/TextView;

    .line 301
    new-instance v0, LFragments/Tab1$5;

    invoke-direct {v0, p0}, LFragments/Tab1$5;-><init>(LFragments/Tab1;)V

    iput-object v0, p0, LFragments/Tab1;->date:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private TimePicker()V
    .locals 7

    .prologue
    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 316
    .local v6, "mcurrentTime":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 317
    .local v3, "hour":I
    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 320
    .local v4, "minute":I
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, LFragments/Tab1;->context:Landroid/content/Context;

    new-instance v2, LFragments/Tab1$6;

    invoke-direct {v2, p0}, LFragments/Tab1$6;-><init>(LFragments/Tab1;)V

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 339
    .local v0, "mTimePicker":Landroid/app/TimePickerDialog;
    const-string v1, "Select Time"

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 341
    return-void
.end method

.method static synthetic access$000(LFragments/Tab1;)V
    .locals 0
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    invoke-direct {p0}, LFragments/Tab1;->TimePicker()V

    return-void
.end method

.method static synthetic access$100(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->dimmerStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->mSwitchID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(LFragments/Tab1;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(LFragments/Tab1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LFragments/Tab1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, LFragments/Tab1;->parseResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->mScheduleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->mScheduletime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(LFragments/Tab1;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->session:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$1800(LFragments/Tab1;)V
    .locals 0
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    invoke-direct {p0}, LFragments/Tab1;->navigateToScheduleList()V

    return-void
.end method

.method static synthetic access$1900(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->mScheduledate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(LFragments/Tab1;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->layoutDimmer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->mScheduleTimeOnly:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(LFragments/Tab1;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$300(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->isRepeatFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # LFragments/Tab1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, LFragments/Tab1;->isRepeatFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(LFragments/Tab1;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->llDays:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(LFragments/Tab1;)V
    .locals 0
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    invoke-direct {p0}, LFragments/Tab1;->updateLabel()V

    return-void
.end method

.method static synthetic access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(LFragments/Tab1;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # LFragments/Tab1;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 68
    iput-object p1, p0, LFragments/Tab1;->pDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(LFragments/Tab1;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Tab1;

    .prologue
    .line 68
    iget-object v0, p0, LFragments/Tab1;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # LFragments/Tab1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, LFragments/Tab1;->messageType:Ljava/lang/String;

    return-object p1
.end method

.method private calulateTimeDiff(Ljava/lang/String;)J
    .locals 12
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 578
    const-string v1, ""

    .line 579
    .local v1, "compareString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 580
    .local v2, "d1":Ljava/util/Date;
    const/4 v3, 0x0

    .line 581
    .local v3, "d2":Ljava/util/Date;
    const-wide/16 v4, 0x0

    .line 582
    .local v4, "diff":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 583
    .local v0, "calander":Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 584
    .local v6, "formatS":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 587
    .local v7, "stopDate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 588
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 590
    const-string v8, "Start Time"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v8, "Stop Time"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 594
    const-string v8, "Diff..."

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-wide v4

    .line 596
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private navigateToScheduleList()V
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 713
    return-void
.end method

.method private onClickOfSetTimer()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 491
    const-string v1, ""

    .line 492
    .local v1, "mLockStatus":Ljava/lang/String;
    iget-object v4, p0, LFragments/Tab1;->rgSwitch:Landroid/widget/RadioGroup;

    const v5, 0x7f0d0110

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    const-string v4, "1"

    iput-object v4, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    .line 495
    :cond_0
    iget-object v4, p0, LFragments/Tab1;->rgSwitch:Landroid/widget/RadioGroup;

    const v5, 0x7f0d0111

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    const-string v4, "0"

    iput-object v4, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    .line 499
    :cond_1
    iget-object v4, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    const-string v5, "Kindly select date."

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 553
    :goto_0
    return-void

    .line 504
    :cond_2
    iget-object v4, p0, LFragments/Tab1;->edittxt_time:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 505
    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    const-string v5, "Kindly select time."

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 509
    :cond_3
    iget-object v4, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 510
    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Kindly select one of operation."

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 515
    :cond_4
    iget-object v4, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LFragments/Tab1;->mScheduledate:Ljava/lang/String;

    .line 516
    iget-object v4, p0, LFragments/Tab1;->edittxt_time:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LFragments/Tab1;->mScheduleTimeOnly:Ljava/lang/String;

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LFragments/Tab1;->edittxt_time:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LFragments/Tab1;->mScheduletime:Ljava/lang/String;

    .line 519
    iget-object v4, p0, LFragments/Tab1;->dimmerStatus:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 520
    iget-object v4, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 521
    iget-object v4, p0, LFragments/Tab1;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v4}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_5

    .line 522
    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    const-string v5, "Kindly raise dimmer value greater than 10"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 529
    :cond_5
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 530
    .local v2, "sdfCheck":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 531
    .local v3, "strDate":Ljava/util/Date;
    iget-object v4, p0, LFragments/Tab1;->mScheduletime:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 532
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 533
    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    const-string v5, "Kindly choose proper date and time."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 550
    .end local v2    # "sdfCheck":Ljava/text/SimpleDateFormat;
    .end local v3    # "strDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 536
    .end local v0    # "e":Ljava/text/ParseException;
    .restart local v2    # "sdfCheck":Ljava/text/SimpleDateFormat;
    .restart local v3    # "strDate":Ljava/util/Date;
    :cond_6
    :try_start_1
    iget-object v4, p0, LFragments/Tab1;->session:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DemoUser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 537
    invoke-direct {p0}, LFragments/Tab1;->setScheduler()V

    goto/16 :goto_0

    .line 539
    :cond_7
    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 540
    iget-object v4, p0, LFragments/Tab1;->mOpeartion:Ljava/lang/String;

    const-string v5, "EDIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 541
    new-instance v4, LFragments/Tab1$AsyncEditScheduleTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LFragments/Tab1$AsyncEditScheduleTask;-><init>(LFragments/Tab1;LFragments/Tab1$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, LFragments/Tab1$AsyncEditScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 543
    :cond_8
    new-instance v4, LFragments/Tab1$AsyncScheduleTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LFragments/Tab1$AsyncScheduleTask;-><init>(LFragments/Tab1;LFragments/Tab1$1;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, LFragments/Tab1;->mScheduletime:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, LFragments/Tab1$AsyncScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 546
    :cond_9
    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, LFragments/Tab1;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private parseResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "dimmerVal"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 666
    if-eqz p1, :cond_2

    .line 668
    :try_start_0
    const-string v4, "Tab1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseResult: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    iget-object v4, p0, LFragments/Tab1;->messageType:Ljava/lang/String;

    const-string v5, "Internet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 673
    invoke-direct {p0}, LFragments/Tab1;->navigateToScheduleList()V

    .line 677
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 678
    .local v2, "jResult":Lorg/json/JSONObject;
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 679
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 680
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "SwitchID"

    iget-object v5, p0, LFragments/Tab1;->mSwitchID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v4, "SwitchName"

    iget-object v5, p0, LFragments/Tab1;->switchname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v4, "Schedule_dates"

    iget-object v5, p0, LFragments/Tab1;->mScheduledate:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v4, "SwitchStatus"

    iget-object v5, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v4, "Time"

    iget-object v5, p0, LFragments/Tab1;->mScheduleTimeOnly:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v4, "RoomName"

    iget-object v5, p0, LFragments/Tab1;->mRoomName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v4, "schedule_id"

    const-string v5, "scheduleSwitchId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v4, "DimmerValue"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v4, "DimmerStatus"

    iget-object v5, p0, LFragments/Tab1;->dimmerStatus:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v4, "Repeate"

    const-string v5, "repeatWeek"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    invoke-virtual {p0}, LFragments/Tab1;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 692
    invoke-virtual {v0, v3}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    .line 694
    invoke-direct {p0}, LFragments/Tab1;->navigateToScheduleList()V

    .line 706
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    .end local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 698
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 704
    :cond_2
    iget-object v4, p0, LFragments/Tab1;->context:Landroid/content/Context;

    invoke-virtual {p0}, LFragments/Tab1;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setScheduler()V
    .locals 5

    .prologue
    .line 556
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "SwitchID"

    iget-object v3, p0, LFragments/Tab1;->mSwitchID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v2, "SwitchName"

    iget-object v3, p0, LFragments/Tab1;->switchname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v2, "Schedule_dates"

    iget-object v3, p0, LFragments/Tab1;->mScheduledate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v2, "SwitchStatus"

    iget-object v3, p0, LFragments/Tab1;->mSwitchStatus:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v2, "Time"

    iget-object v3, p0, LFragments/Tab1;->mScheduleTimeOnly:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v2, "RoomName"

    iget-object v3, p0, LFragments/Tab1;->mRoomName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v2, "IP"

    iget-object v3, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    const-string v4, "IP"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v2, p0, LFragments/Tab1;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "db":LDatabase/DatabaseHandler;
    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->insertSchedulerInfo(Ljava/util/HashMap;)V

    .line 576
    return-void
.end method

.method private updateLabel()V
    .locals 4

    .prologue
    .line 345
    const-string v0, "yyyy-MM-dd"

    .line 346
    .local v0, "myFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 348
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, LFragments/Tab1;->myCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 351
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const v5, 0x7f02019f

    const v4, 0x7f020192

    const/16 v3, 0x10

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 358
    :pswitch_0
    invoke-direct {p0}, LFragments/Tab1;->onClickOfSetTimer()V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    .line 364
    iget-object v0, p0, LFragments/Tab1;->tvSun:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, LFragments/Tab1;->tvSun:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_2

    .line 371
    iget-object v0, p0, LFragments/Tab1;->tvSun:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, LFragments/Tab1;->tvSun:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    aget-object v0, v0, v6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v6

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    .line 381
    iget-object v0, p0, LFragments/Tab1;->tvMon:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 383
    :cond_3
    iget-object v0, p0, LFragments/Tab1;->tvMon:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 386
    :cond_4
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v6

    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_5

    .line 388
    iget-object v0, p0, LFragments/Tab1;->tvMon:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 390
    :cond_5
    iget-object v0, p0, LFragments/Tab1;->tvMon:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 397
    :pswitch_3
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 398
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_6

    .line 400
    iget-object v0, p0, LFragments/Tab1;->tvTue:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 402
    :cond_6
    iget-object v0, p0, LFragments/Tab1;->tvTue:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 405
    :cond_7
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_8

    .line 407
    iget-object v0, p0, LFragments/Tab1;->tvTue:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 409
    :cond_8
    iget-object v0, p0, LFragments/Tab1;->tvTue:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 415
    :pswitch_4
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 416
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_9

    .line 418
    iget-object v0, p0, LFragments/Tab1;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 420
    :cond_9
    iget-object v0, p0, LFragments/Tab1;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 423
    :cond_a
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_b

    .line 425
    iget-object v0, p0, LFragments/Tab1;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 427
    :cond_b
    iget-object v0, p0, LFragments/Tab1;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 433
    :pswitch_5
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 435
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_c

    .line 436
    iget-object v0, p0, LFragments/Tab1;->tvTha:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 438
    :cond_c
    iget-object v0, p0, LFragments/Tab1;->tvTha:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 441
    :cond_d
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_e

    .line 443
    iget-object v0, p0, LFragments/Tab1;->tvTha:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 445
    :cond_e
    iget-object v0, p0, LFragments/Tab1;->tvTha:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 451
    :pswitch_6
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 452
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 453
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_f

    .line 454
    iget-object v0, p0, LFragments/Tab1;->tvFri:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 456
    :cond_f
    iget-object v0, p0, LFragments/Tab1;->tvFri:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 459
    :cond_10
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_11

    .line 461
    iget-object v0, p0, LFragments/Tab1;->tvFri:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 463
    :cond_11
    iget-object v0, p0, LFragments/Tab1;->tvFri:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 470
    :pswitch_7
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 471
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_12

    .line 473
    iget-object v0, p0, LFragments/Tab1;->tvSat:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 475
    :cond_12
    iget-object v0, p0, LFragments/Tab1;->tvSat:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 478
    :cond_13
    iget-object v0, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_14

    .line 480
    iget-object v0, p0, LFragments/Tab1;->tvSat:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 482
    :cond_14
    iget-object v0, p0, LFragments/Tab1;->tvSat:Landroid/widget/TextView;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x7f0d0117
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    const v5, 0x7f04003c

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iput-object v5, p0, LFragments/Tab1;->context:Landroid/content/Context;

    .line 114
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d011e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, LFragments/Tab1;->btn_scedule:Landroid/widget/Button;

    .line 115
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d010b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    .line 116
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d010d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, LFragments/Tab1;->edittxt_time:Landroid/widget/EditText;

    .line 117
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0109

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->txtText:Landroid/widget/TextView;

    .line 119
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0116

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, LFragments/Tab1;->llDays:Landroid/widget/LinearLayout;

    .line 120
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0115

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, LFragments/Tab1;->cbRepeat:Landroid/widget/CheckBox;

    .line 122
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0117

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->tvSun:Landroid/widget/TextView;

    .line 123
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0118

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->tvMon:Landroid/widget/TextView;

    .line 124
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0119

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->tvTue:Landroid/widget/TextView;

    .line 125
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d011a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->tvWeb:Landroid/widget/TextView;

    .line 126
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d011b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->tvTha:Landroid/widget/TextView;

    .line 127
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d011c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->tvFri:Landroid/widget/TextView;

    .line 128
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d011d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LFragments/Tab1;->tvSat:Landroid/widget/TextView;

    .line 130
    iget-object v5, p0, LFragments/Tab1;->tvSun:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v5, p0, LFragments/Tab1;->tvMon:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v5, p0, LFragments/Tab1;->tvTue:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v5, p0, LFragments/Tab1;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v5, p0, LFragments/Tab1;->tvTha:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v5, p0, LFragments/Tab1;->tvFri:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v5, p0, LFragments/Tab1;->tvSat:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d010f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, LFragments/Tab1;->rgSwitch:Landroid/widget/RadioGroup;

    .line 139
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0110

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, LFragments/Tab1;->rbSwitchOn:Landroid/widget/RadioButton;

    .line 140
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0111

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, LFragments/Tab1;->rbSwitchOff:Landroid/widget/RadioButton;

    .line 143
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0112

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, LFragments/Tab1;->layoutDimmer:Landroid/widget/LinearLayout;

    .line 144
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    const v6, 0x7f0d0114

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput-object v5, p0, LFragments/Tab1;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 149
    invoke-virtual {p0}, LFragments/Tab1;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "SwitchInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    .line 150
    invoke-virtual {p0}, LFragments/Tab1;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Operation"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LFragments/Tab1;->mOpeartion:Ljava/lang/String;

    .line 152
    iget-object v5, p0, LFragments/Tab1;->mOpeartion:Ljava/lang/String;

    const-string v6, "EDIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 154
    invoke-virtual {p0}, LFragments/Tab1;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "EditInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    .line 155
    iget-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    const-string v6, "Repeate"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, "repeatWeek":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 158
    const-string v5, "NA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    const-string v5, "NA"

    iput-object v5, p0, LFragments/Tab1;->isRepeatFlag:Ljava/lang/String;

    .line 188
    :cond_0
    :goto_0
    iget-object v6, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    iget-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    const-string v7, "Schedule_dates"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v6, p0, LFragments/Tab1;->edittxt_time:Landroid/widget/EditText;

    iget-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    const-string v7, "Time"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    const-string v6, "schedule_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, LFragments/Tab1;->mScheduleId:Ljava/lang/String;

    .line 192
    iget-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    const-string v6, "DimmerStatus"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, LFragments/Tab1;->dimmerStatus:Ljava/lang/String;

    .line 193
    iget-object v5, p0, LFragments/Tab1;->dimmerStatus:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 194
    iget-object v5, p0, LFragments/Tab1;->layoutDimmer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :try_start_0
    iget-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    const-string v6, "DimmerValue"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "dimmervalueset":I
    iget-object v5, p0, LFragments/Tab1;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    mul-int/lit8 v6, v0, 0x64

    div-int/lit8 v6, v6, 0x4b

    invoke-virtual {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .end local v0    # "dimmervalueset":I
    :goto_1
    iget-object v5, p0, LFragments/Tab1;->mapListEdit:Ljava/util/HashMap;

    const-string v6, "SwitchStatus"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 205
    iget-object v5, p0, LFragments/Tab1;->rbSwitchOff:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    .end local v3    # "repeatWeek":Ljava/lang/String;
    :goto_2
    new-instance v5, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, LFragments/Tab1;->session:LSession/SessionManager;

    .line 227
    new-instance v5, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, LFragments/Tab1;->db:LDatabase/DatabaseHandler;

    .line 229
    iget-object v5, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, LFragments/Tab1;->mSwitchID:Ljava/lang/String;

    .line 230
    iget-object v5, p0, LFragments/Tab1;->session:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LFragments/Tab1;->mUserID:Ljava/lang/String;

    .line 233
    iget-object v5, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    const-string v6, "SwitchName"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, LFragments/Tab1;->switchname:Ljava/lang/String;

    .line 234
    iget-object v5, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    const-string v6, "RoomName"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, LFragments/Tab1;->mRoomName:Ljava/lang/String;

    .line 235
    iget-object v6, p0, LFragments/Tab1;->txtText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "What do you want "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    const-string v8, "SwitchName"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to do? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v5, p0, LFragments/Tab1;->btn_scedule:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v5, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 241
    iget-object v5, p0, LFragments/Tab1;->edittxt_time:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 243
    iget-object v5, p0, LFragments/Tab1;->edittxt_date:Landroid/widget/EditText;

    new-instance v6, LFragments/Tab1$1;

    invoke-direct {v6, p0}, LFragments/Tab1$1;-><init>(LFragments/Tab1;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v5, p0, LFragments/Tab1;->edittxt_time:Landroid/widget/EditText;

    new-instance v6, LFragments/Tab1$2;

    invoke-direct {v6, p0}, LFragments/Tab1$2;-><init>(LFragments/Tab1;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v5, p0, LFragments/Tab1;->rgSwitch:Landroid/widget/RadioGroup;

    new-instance v6, LFragments/Tab1$3;

    invoke-direct {v6, p0}, LFragments/Tab1$3;-><init>(LFragments/Tab1;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 283
    iget-object v5, p0, LFragments/Tab1;->cbRepeat:Landroid/widget/CheckBox;

    new-instance v6, LFragments/Tab1$4;

    invoke-direct {v6, p0}, LFragments/Tab1$4;-><init>(LFragments/Tab1;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    return-object v5

    .line 162
    .restart local v3    # "repeatWeek":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    .line 163
    const-string v5, "1"

    iput-object v5, p0, LFragments/Tab1;->isRepeatFlag:Ljava/lang/String;

    .line 164
    iget-object v5, p0, LFragments/Tab1;->cbRepeat:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    iget-object v5, p0, LFragments/Tab1;->llDays:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v5, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 168
    invoke-virtual {p0}, LFragments/Tab1;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, LFragments/Tab1;->textViewArray:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "id"

    iget-object v8, p0, LFragments/Tab1;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 169
    .local v4, "temp":I
    iget-object v6, p0, LFragments/Tab1;->textViews:[Landroid/widget/TextView;

    iget-object v5, p0, LFragments/Tab1;->view:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v2

    .line 170
    iget-object v5, p0, LFragments/Tab1;->arrRepeatFlag:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_2

    .line 172
    iget-object v5, p0, LFragments/Tab1;->textViews:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f020192

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 174
    :cond_2
    iget-object v5, p0, LFragments/Tab1;->textViews:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f020192

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 184
    .end local v2    # "i":I
    .end local v4    # "temp":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v4    # "temp":I
    :cond_3
    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_4

    .line 178
    iget-object v5, p0, LFragments/Tab1;->textViews:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f02019f

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 180
    :cond_4
    iget-object v5, p0, LFragments/Tab1;->textViews:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    invoke-virtual {p0}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f02019f

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 198
    .end local v2    # "i":I
    .end local v4    # "temp":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, LFragments/Tab1;->layoutDimmer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 207
    :cond_6
    iget-object v5, p0, LFragments/Tab1;->rbSwitchOn:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 212
    .end local v3    # "repeatWeek":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    const-string v6, "DimmerStatus"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, LFragments/Tab1;->dimmerStatus:Ljava/lang/String;

    .line 214
    iget-object v5, p0, LFragments/Tab1;->dimmerStatus:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 216
    iget-object v5, p0, LFragments/Tab1;->layoutDimmer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    :try_start_3
    iget-object v5, p0, LFragments/Tab1;->mapList:Ljava/util/HashMap;

    const-string v6, "DimmerValue"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 219
    .restart local v0    # "dimmervalueset":I
    iget-object v5, p0, LFragments/Tab1;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    mul-int/lit8 v6, v0, 0x64

    div-int/lit8 v6, v6, 0x4b

    invoke-virtual {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 220
    .end local v0    # "dimmervalueset":I
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    iget-object v5, p0, LFragments/Tab1;->layoutDimmer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 109
    return-void
.end method
