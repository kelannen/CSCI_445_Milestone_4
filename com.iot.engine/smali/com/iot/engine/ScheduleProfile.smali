.class public Lcom/iot/engine/ScheduleProfile;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ScheduleProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ScheduleProfile$AsyncEditScheduleTask;,
        Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleProfile"


# instance fields
.field private arrRepeatFlag:[Ljava/lang/String;

.field private btn_scedule:Landroid/widget/Button;

.field private cbRepeat:Landroid/widget/CheckBox;

.field date:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private edittxt_date:Landroid/widget/EditText;

.field private edittxt_time:Landroid/widget/EditText;

.field hours:Ljava/lang/Integer;

.field imgBack:Landroid/widget/ImageView;

.field private isRepeatFlag:Ljava/lang/String;

.field private llDays:Landroid/widget/LinearLayout;

.field private mScheduleDateTime:Ljava/lang/String;

.field private mapProfile:Ljava/util/HashMap;
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

.field private messageFrom:Ljava/lang/String;

.field minutes:Ljava/lang/Integer;

.field myCalendar:Ljava/util/Calendar;

.field private profileID:Ljava/lang/String;

.field session:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field textViewArray:[Ljava/lang/String;

.field private textViews:[Landroid/widget/TextView;

.field private tvFri:Landroid/widget/TextView;

.field private tvMon:Landroid/widget/TextView;

.field private tvSat:Landroid/widget/TextView;

.field private tvSun:Landroid/widget/TextView;

.field private tvTha:Landroid/widget/TextView;

.field private tvTue:Landroid/widget/TextView;

.field private tvWeb:Landroid/widget/TextView;

.field private txtHeading:Landroid/widget/TextView;

.field private txtMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 67
    const-string v0, "NA"

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->isRepeatFlag:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->myCalendar:Ljava/util/Calendar;

    .line 75
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

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    .line 76
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

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->textViewArray:[Ljava/lang/String;

    .line 77
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->textViews:[Landroid/widget/TextView;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->profileID:Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/iot/engine/ScheduleProfile$3;

    invoke-direct {v0, p0}, Lcom/iot/engine/ScheduleProfile$3;-><init>(Lcom/iot/engine/ScheduleProfile;)V

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->date:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private TimePicker()V
    .locals 7

    .prologue
    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 221
    .local v6, "mcurrentTime":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 222
    .local v3, "hour":I
    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 225
    .local v4, "minute":I
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/iot/engine/ScheduleProfile$4;

    invoke-direct {v2, p0}, Lcom/iot/engine/ScheduleProfile$4;-><init>(Lcom/iot/engine/ScheduleProfile;)V

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 244
    .local v0, "mTimePicker":Landroid/app/TimePickerDialog;
    const-string v1, "Select Time"

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->isRepeatFlag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iot/engine/ScheduleProfile;->isRepeatFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/ScheduleProfile;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->llDays:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->profileID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->mScheduleDateTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/iot/engine/ScheduleProfile;->parseResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/iot/engine/ScheduleProfile;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/iot/engine/ScheduleProfile;->parseEditResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/ScheduleProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iot/engine/ScheduleProfile;->TimePicker()V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/ScheduleProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iot/engine/ScheduleProfile;->updateLabel()V

    return-void
.end method

.method static synthetic access$400(Lcom/iot/engine/ScheduleProfile;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_time:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iot/engine/ScheduleProfile;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/iot/engine/ScheduleProfile;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iot/engine/ScheduleProfile;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/iot/engine/ScheduleProfile;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->messageFrom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ScheduleProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iot/engine/ScheduleProfile;->messageFrom:Ljava/lang/String;

    return-object p1
.end method

.method private initializeControls()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->session:LSession/SessionManager;

    .line 156
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->txtHeading:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->txtMessage:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->llDays:Landroid/widget/LinearLayout;

    .line 160
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->cbRepeat:Landroid/widget/CheckBox;

    .line 161
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->imgBack:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    .line 164
    const v0, 0x7f0d010d

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_time:Landroid/widget/EditText;

    .line 165
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->btn_scedule:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Profile Scheduler"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v0, 0x7f0d0117

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSun:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvMon:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0d0119

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTue:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0d011a

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvWeb:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTha:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvFri:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0d011d

    invoke-virtual {p0, v0}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSat:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSun:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvMon:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTue:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTha:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvFri:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSat:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->btn_scedule:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_time:Landroid/widget/EditText;

    new-instance v1, Lcom/iot/engine/ScheduleProfile$2;

    invoke-direct {v1, p0}, Lcom/iot/engine/ScheduleProfile$2;-><init>(Lcom/iot/engine/ScheduleProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method private onClickSchedule()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 404
    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    const-string v5, "Kindly select date."

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 443
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_time:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 410
    const-string v5, "Kindly select time."

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "selectDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_time:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "selectTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iot/engine/ScheduleProfile;->mScheduleDateTime:Ljava/lang/String;

    .line 419
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 420
    .local v1, "sdfCheck":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 421
    .local v4, "strDate":Ljava/util/Date;
    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile;->mScheduleDateTime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 422
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 423
    const-string v5, "Kindly choose proper date and time."

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    .end local v1    # "sdfCheck":Ljava/text/SimpleDateFormat;
    .end local v4    # "strDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v0    # "e":Ljava/text/ParseException;
    .restart local v1    # "sdfCheck":Ljava/text/SimpleDateFormat;
    .restart local v4    # "strDate":Ljava/util/Date;
    :cond_2
    :try_start_1
    invoke-static {p0}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 428
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "OPERATION"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 429
    new-instance v5, Lcom/iot/engine/ScheduleProfile$AsyncEditScheduleTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/iot/engine/ScheduleProfile$AsyncEditScheduleTask;-><init>(Lcom/iot/engine/ScheduleProfile;Lcom/iot/engine/ScheduleProfile$1;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iot/engine/ScheduleProfile;->mScheduleDateTime:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/iot/engine/ScheduleProfile$AsyncEditScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 431
    :cond_3
    new-instance v5, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;-><init>(Lcom/iot/engine/ScheduleProfile;Lcom/iot/engine/ScheduleProfile$1;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iot/engine/ScheduleProfile;->mScheduleDateTime:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private parseEditResult(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 597
    if-eqz p1, :cond_0

    .line 599
    const-string v5, "ScheduleProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 603
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 605
    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile;->messageFrom:Ljava/lang/String;

    const-string v6, "Internet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 620
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 621
    .local v4, "returnIntent":Landroid/content/Intent;
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/iot/engine/ScheduleProfile;->setResult(ILandroid/content/Intent;)V

    .line 622
    const-string v5, "Edit profile successfully"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 623
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->finish()V

    .line 632
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v4    # "returnIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 608
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 609
    .local v2, "jResult":Lorg/json/JSONObject;
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 611
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "profile_id"

    const-string v6, "profileId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v5, "profile_schedule_id"

    const-string v6, "scheduleId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v5, "Repeate"

    const-string v6, "repeatWeek"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v5, "SwitchStatus"

    const-string v6, "switchStatus"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v5, "profile_name"

    const-string v6, "profileName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v5, "Schedule_dates"

    const-string v6, "scheduleDateTime"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {v0, v3}, LDatabase/DatabaseHandler;->insertIntoProfileScheduler(Ljava/util/HashMap;)V

    goto :goto_0

    .line 629
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    .end local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    goto :goto_1

    .line 627
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_2
    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private parseResult(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 500
    const-string v4, "ScheduleProfile"

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

    .line 503
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 504
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 506
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 508
    .local v0, "db":LDatabase/DatabaseHandler;
    iget-object v4, p0, Lcom/iot/engine/ScheduleProfile;->messageFrom:Ljava/lang/String;

    const-string v5, "Internet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    :goto_0
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 523
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->finish()V

    .line 535
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 511
    .restart local v0    # "db":LDatabase/DatabaseHandler;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    .local v2, "jResult":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 513
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "profile_id"

    const-string v5, "profileId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v4, "profile_schedule_id"

    const-string v5, "scheduleId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v4, "Repeate"

    const-string v5, "repeatWeek"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v4, "SwitchStatus"

    const-string v5, "switchStatus"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v4, "profile_name"

    const-string v5, "profileName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v4, "Schedule_dates"

    const-string v5, "scheduleDateTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {v0, v3}, LDatabase/DatabaseHandler;->insertIntoProfileScheduler(Ljava/util/HashMap;)V

    goto :goto_0

    .line 530
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    .end local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .line 527
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_2
    const-string v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private updateLabel()V
    .locals 4

    .prologue
    .line 213
    const-string v0, "yyyy-MM-dd"

    .line 214
    .local v0, "myFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 216
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->myCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 218
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f02019f

    const v4, 0x7f020192

    const/16 v3, 0x10

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 254
    :sswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->finish()V

    goto :goto_0

    .line 258
    :sswitch_1
    invoke-direct {p0}, Lcom/iot/engine/ScheduleProfile;->onClickSchedule()V

    goto :goto_0

    .line 263
    :sswitch_2
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile;->date:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/iot/engine/ScheduleProfile;->myCalendar:Ljava/util/Calendar;

    .line 264
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, p0, Lcom/iot/engine/ScheduleProfile;->myCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/iot/engine/ScheduleProfile;->myCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 265
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 271
    :sswitch_3
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    .line 274
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSun:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSun:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_2

    .line 281
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSun:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSun:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 288
    :sswitch_4
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    aget-object v0, v0, v6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v6

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    .line 291
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvMon:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvMon:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v6

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_5

    .line 298
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvMon:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvMon:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 307
    :sswitch_5
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v7

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_6

    .line 310
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTue:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 312
    :cond_6
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTue:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v7

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_8

    .line 317
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTue:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 319
    :cond_8
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTue:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 325
    :sswitch_6
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 326
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_9

    .line 328
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvWeb:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 330
    :cond_9
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvWeb:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 333
    :cond_a
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_b

    .line 335
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvWeb:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 337
    :cond_b
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvWeb:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 343
    :sswitch_7
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_c

    .line 346
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTha:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 348
    :cond_c
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTha:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 351
    :cond_d
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_e

    .line 353
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTha:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 355
    :cond_e
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvTha:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 361
    :sswitch_8
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 362
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_f

    .line 364
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvFri:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 366
    :cond_f
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvFri:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 369
    :cond_10
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_11

    .line 371
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvFri:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 373
    :cond_11
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvFri:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 380
    :sswitch_9
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 381
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 382
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_12

    .line 383
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSat:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 385
    :cond_12
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSat:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 388
    :cond_13
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_14

    .line 390
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSat:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 392
    :cond_14
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile;->tvSat:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x7f0d010b -> :sswitch_2
        0x7f0d0117 -> :sswitch_3
        0x7f0d0118 -> :sswitch_4
        0x7f0d0119 -> :sswitch_5
        0x7f0d011a -> :sswitch_6
        0x7f0d011b -> :sswitch_7
        0x7f0d011c -> :sswitch_8
        0x7f0d011d -> :sswitch_9
        0x7f0d011e -> :sswitch_1
        0x7f0d0156 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f02019f

    const v9, 0x7f020192

    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v3, 0x7f04009b

    invoke-virtual {p0, v3}, Lcom/iot/engine/ScheduleProfile;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/iot/engine/ScheduleProfile;->initializeControls()V

    .line 89
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "OPERATION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "OPERATION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    .line 91
    iget-object v4, p0, Lcom/iot/engine/ScheduleProfile;->txtMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    const-string v5, "SwitchStatus"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Profile is created to Turn OFF Switch"

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    const-string v4, "Schedule_dates"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "dateTime":[Ljava/lang/String;
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    const-string v4, "profile_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/iot/engine/ScheduleProfile;->profileID:Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_date:Landroid/widget/EditText;

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->edittxt_time:Landroid/widget/EditText;

    aget-object v4, v0, v7

    const/4 v5, 0x5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    const-string v4, "Repeate"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "NA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const-string v3, "NA"

    iput-object v3, p0, Lcom/iot/engine/ScheduleProfile;->isRepeatFlag:Ljava/lang/String;

    .line 98
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->llDays:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->cbRepeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    .end local v0    # "dateTime":[Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->cbRepeat:Landroid/widget/CheckBox;

    new-instance v4, Lcom/iot/engine/ScheduleProfile$1;

    invoke-direct {v4, p0}, Lcom/iot/engine/ScheduleProfile$1;-><init>(Lcom/iot/engine/ScheduleProfile;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    return-void

    .line 91
    :cond_1
    const-string v3, "Profile is created to Turn ON Switch"

    goto :goto_0

    .line 101
    .restart local v0    # "dateTime":[Ljava/lang/String;
    :cond_2
    const-string v3, "1"

    iput-object v3, p0, Lcom/iot/engine/ScheduleProfile;->isRepeatFlag:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->llDays:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    const-string v4, "Repeate"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    .line 104
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->cbRepeat:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/ScheduleProfile;->textViewArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, "temp":I
    iget-object v4, p0, Lcom/iot/engine/ScheduleProfile;->textViews:[Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/iot/engine/ScheduleProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 110
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->arrRepeatFlag:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v8, :cond_3

    .line 112
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    :cond_3
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 119
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v8, :cond_5

    .line 120
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {p0, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 122
    :cond_5
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {p0, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 132
    .end local v0    # "dateTime":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "temp":I
    :cond_6
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleProfile;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ProfileData"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    .line 133
    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/iot/engine/ScheduleProfile;->profileID:Ljava/lang/String;

    .line 134
    const-string v3, "ScheduleProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/iot/engine/ScheduleProfile;->txtMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile;->mapProfile:Ljava/util/HashMap;

    const-string v5, "off_mode"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Profile is created to Turn OFF Switch"

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    const-string v3, "Profile is created to Turn ON Switch"

    goto :goto_4
.end method
