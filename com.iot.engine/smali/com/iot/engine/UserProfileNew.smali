.class public Lcom/iot/engine/UserProfileNew;
.super Landroid/app/Activity;
.source "UserProfileNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;,
        Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserProfileNew"


# instance fields
.field private REQUEST_CAMERA:I

.field private SELECT_FILE:I

.field private btnRegister:Landroid/widget/Button;

.field date:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private edittxt_date:Landroid/widget/EditText;

.field private imageEdit:Lcom/iot/engine/RoundedImageView;

.field private imgBack:Landroid/widget/ImageView;

.field private imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mBase64String:Ljava/lang/String;

.field private mBirthDate:Ljava/lang/String;

.field private mEdtEmail:Landroid/widget/EditText;

.field private mEdtFirstName:Landroid/widget/EditText;

.field private mEdtLastName:Landroid/widget/EditText;

.field private mEdtPassword:Landroid/widget/EditText;

.field private mEdtPhone:Landroid/widget/EditText;

.field private mFirstname:Ljava/lang/String;

.field private mLastname:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field myCalendar:Ljava/util/Calendar;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;

.field private userChoosenTask:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/iot/engine/UserProfileNew;->REQUEST_CAMERA:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iot/engine/UserProfileNew;->SELECT_FILE:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->mBase64String:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/iot/engine/UserProfileNew$1;

    invoke-direct {v0, p0}, Lcom/iot/engine/UserProfileNew$1;-><init>(Lcom/iot/engine/UserProfileNew;)V

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->date:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private CreateJSONBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 466
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v0, "jMain":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "userId"

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v1, "firstName"

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->mFirstname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v1, "lastName"

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->mLastname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v1, "image"

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->mBase64String:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mBase64String:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const-string v1, "imageStatus"

    const-string v2, "NA"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    :goto_0
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v1, "birthDate"

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->mBirthDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v1, "UserProfileNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateJSONBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_1
    return-object v0

    .line 477
    :cond_0
    const-string v1, "imageStatus"

    const-string v2, "UPLOAD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/iot/engine/UserProfileNew;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->updateLabel()V

    return-void
.end method

.method static synthetic access$1000(Lcom/iot/engine/UserProfileNew;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->mLastname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iot/engine/UserProfileNew;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iot/engine/UserProfileNew;->userChoosenTask:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/UserProfileNew;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->cameraIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/iot/engine/UserProfileNew;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->galleryIntent()V

    return-void
.end method

.method static synthetic access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/iot/engine/UserProfileNew;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iot/engine/UserProfileNew;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iot/engine/UserProfileNew;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->CreateJSONBody()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/iot/engine/UserProfileNew;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iot/engine/UserProfileNew;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/iot/engine/UserProfileNew;->parseProfileResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/iot/engine/UserProfileNew;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->mFirstname:Ljava/lang/String;

    return-object v0
.end method

.method private cameraIntent()V
    .locals 5

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "i":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 320
    .local v1, "out":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "profile.png"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .end local v1    # "out":Ljava/io/File;
    .local v2, "out":Ljava/io/File;
    const-string v3, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    iget v3, p0, Lcom/iot/engine/UserProfileNew;->REQUEST_CAMERA:I

    invoke-virtual {p0, v0, v3}, Lcom/iot/engine/UserProfileNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 323
    return-void
.end method

.method private galleryIntent()V
    .locals 3

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v1, "Select File"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/iot/engine/UserProfileNew;->SELECT_FILE:I

    invoke-virtual {p0, v1, v2}, Lcom/iot/engine/UserProfileNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    return-void
.end method

.method private initialseControls()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    .line 87
    const v0, 0x7f0d0211

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->mEdtFirstName:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f0d0212

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->mEdtLastName:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->mEdtEmail:Landroid/widget/EditText;

    .line 90
    const v0, 0x7f0d0213

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->mEdtPhone:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->mEdtPassword:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f0d01ce

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 93
    const v0, 0x7f0d026a

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iot/engine/RoundedImageView;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->imageEdit:Lcom/iot/engine/RoundedImageView;

    .line 94
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->imgBack:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->txtHeading:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->edittxt_date:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->btnRegister:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, p0}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->imageEdit:Lcom/iot/engine/RoundedImageView;

    invoke-virtual {v0, p0}, Lcom/iot/engine/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->btnRegister:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew;->myCalendar:Ljava/util/Calendar;

    .line 108
    return-void
.end method

.method public static isDOBInRange(Ljava/lang/String;)Z
    .locals 12
    .param p0, "mBirthDate"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 210
    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 211
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    const-string v6, "dd/MM/yyyy"

    .line 212
    .local v6, "pattern":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "currDate":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 214
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 215
    const/4 v10, 0x1

    const/4 v11, -0x4

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 216
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 218
    .local v4, "dStart":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 219
    .local v1, "c1":Ljava/util/Calendar;
    invoke-virtual {v7, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 220
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 222
    .local v3, "dBirthDate":Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 229
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "c1":Ljava/util/Calendar;
    .end local v2    # "currDate":Ljava/lang/String;
    .end local v3    # "dBirthDate":Ljava/util/Date;
    .end local v4    # "dStart":Ljava/util/Date;
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return v8

    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "c1":Ljava/util/Calendar;
    .restart local v2    # "currDate":Ljava/lang/String;
    .restart local v3    # "dBirthDate":Ljava/util/Date;
    .restart local v4    # "dStart":Ljava/util/Date;
    .restart local v6    # "pattern":Ljava/lang/String;
    .restart local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    move v8, v9

    .line 225
    goto :goto_0

    .line 228
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "c1":Ljava/util/Calendar;
    .end local v2    # "currDate":Ljava/lang/String;
    .end local v3    # "dBirthDate":Ljava/util/Date;
    .end local v4    # "dStart":Ljava/util/Date;
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v9

    .line 229
    goto :goto_0
.end method

.method private onCaptureImageResult(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 383
    .local v0, "out":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "profile.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    .end local v0    # "out":Ljava/io/File;
    .local v1, "out":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/CropImage;->activity(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v2

    sget-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 386
    invoke-virtual {v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v2

    .line 387
    invoke-virtual {v2, p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->start(Landroid/app/Activity;)V

    .line 389
    return-void
.end method

.method private onClickOfEditProfile()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfileNew;->mFirstname:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfileNew;->mLastname:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfileNew;->mBirthDate:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "Enter First Name"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "Enter Last Name"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mBirthDate:Ljava/lang/String;

    invoke-static {v1}, Lcom/iot/engine/UserProfileNew;->isDOBInRange(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    const-string v1, "Kindly check birthdate"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 193
    :cond_2
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/iot/engine/UserProfileNew;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/UserProfileNew;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 198
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    new-instance v1, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;-><init>(Lcom/iot/engine/UserProfileNew;Lcom/iot/engine/UserProfileNew$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 201
    :cond_3
    const-string v1, "Kindly check internet connection."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onSelectFromGalleryResult(Landroid/content/Intent;)V
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/iot/engine/UserProfileNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 400
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 401
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 403
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 406
    .local v0, "ba":[B
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/CropImage;->activity(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v4

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 407
    invoke-virtual {v4, v5}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v4

    .line 408
    invoke-virtual {v4, p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->start(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v0    # "ba":[B
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v3

    .line 411
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseProfileResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 491
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 492
    .local v2, "jResult":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    const-string v3, "UserProfileNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseProfileResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v1, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 496
    .local v1, "jImage":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LSession/SessionManager;->setUserSync(Z)Ljava/lang/Boolean;

    .line 497
    new-instance v3, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;

    invoke-direct {v3, p0}, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;-><init>(Lcom/iot/engine/UserProfileNew;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 499
    const-string v3, "image"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 501
    iget-object v3, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    const-string v4, "image"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LSession/SessionManager;->setUserImage(Ljava/lang/String;)V

    .line 504
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->invalidate(Ljava/lang/String;)V

    .line 505
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    sget-object v4, Lcom/squareup/picasso/MemoryPolicy;->NO_CACHE:Lcom/squareup/picasso/MemoryPolicy;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/squareup/picasso/MemoryPolicy;

    .line 506
    invoke-virtual {v3, v4, v5}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    sget-object v4, Lcom/squareup/picasso/NetworkPolicy;->NO_CACHE:Lcom/squareup/picasso/NetworkPolicy;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/squareup/picasso/NetworkPolicy;

    .line 507
    invoke-virtual {v3, v4, v5}, Lcom/squareup/picasso/RequestCreator;->networkPolicy(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    .line 511
    :cond_0
    iget-object v3, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/UserProfileNew;->mFirstname:Ljava/lang/String;

    invoke-virtual {v3, v4}, LSession/SessionManager;->setFirstName(Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/UserProfileNew;->mLastname:Ljava/lang/String;

    invoke-virtual {v3, v4}, LSession/SessionManager;->setLastName(Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/UserProfileNew;->mBirthDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, LSession/SessionManager;->saveBirthDate(Ljava/lang/String;)V

    .line 515
    const-string v3, "Profile updated successfully."

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 525
    .end local v1    # "jImage":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 519
    .restart local v2    # "jResult":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "Profile Changed fail."

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private selectImage()V
    .locals 4

    .prologue
    .line 274
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Camera"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Gallery"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Cancel"

    aput-object v3, v1, v2

    .line 277
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Add Photo!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    new-instance v2, Lcom/iot/engine/UserProfileNew$2;

    invoke-direct {v2, p0, v1}, Lcom/iot/engine/UserProfileNew$2;-><init>(Lcom/iot/engine/UserProfileNew;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 303
    return-void
.end method

.method private setProfileValue()V
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtFirstName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtLastName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtEmail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->mEdtPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->edittxt_date:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getBirthDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfileNew;->mUserId:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "mImage":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f020175

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 125
    :cond_0
    return-void
.end method

.method private updateLabel()V
    .locals 4

    .prologue
    .line 165
    const-string v0, "dd/MM/yyyy"

    .line 166
    .local v0, "myFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 168
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iot/engine/UserProfileNew;->myCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->edittxt_date:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iot/engine/UserProfileNew;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 170
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x190

    const/4 v7, -0x1

    .line 327
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 329
    if-ne p2, v7, :cond_0

    .line 330
    iget v6, p0, Lcom/iot/engine/UserProfileNew;->SELECT_FILE:I

    if-ne p1, v6, :cond_2

    .line 331
    invoke-direct {p0, p3}, Lcom/iot/engine/UserProfileNew;->onSelectFromGalleryResult(Landroid/content/Intent;)V

    .line 338
    :cond_0
    :goto_0
    const/16 v6, 0xcb

    if-ne p1, v6, :cond_1

    .line 339
    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/CropImage;->getActivityResult(Landroid/content/Intent;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;

    move-result-object v4

    .line 340
    .local v4, "result":Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    if-ne p2, v7, :cond_3

    .line 342
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 343
    .local v5, "resultUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/iot/engine/UserProfileNew;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v6, v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageURI(Landroid/net/Uri;)V

    .line 345
    iget-object v6, p0, Lcom/iot/engine/UserProfileNew;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 346
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 347
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v2, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 349
    const/4 v6, 0x1

    invoke-static {v2, v8, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 351
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 352
    .local v0, "b":[B
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/iot/engine/UserProfileNew;->mBase64String:Ljava/lang/String;

    .line 353
    const-string v6, "URL"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "b":[B
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "result":Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    .end local v5    # "resultUri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 333
    :cond_2
    iget v6, p0, Lcom/iot/engine/UserProfileNew;->REQUEST_CAMERA:I

    if-ne p1, v6, :cond_0

    .line 334
    invoke-direct {p0, p3}, Lcom/iot/engine/UserProfileNew;->onCaptureImageResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 356
    .restart local v4    # "result":Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    :cond_3
    const/16 v6, 0xcc

    if-ne p2, v6, :cond_1

    .line 357
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getError()Ljava/lang/Exception;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 131
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->selectImage()V

    goto :goto_0

    .line 134
    :sswitch_1
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->selectImage()V

    goto :goto_0

    .line 137
    :sswitch_2
    invoke-virtual {p0}, Lcom/iot/engine/UserProfileNew;->finish()V

    goto :goto_0

    .line 140
    :sswitch_3
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->onClickOfEditProfile()V

    goto :goto_0

    .line 143
    :sswitch_4
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew;->date:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->myCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    .line 144
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->myCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/iot/engine/UserProfileNew;->myCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 145
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d010b -> :sswitch_4
        0x7f0d014a -> :sswitch_3
        0x7f0d0156 -> :sswitch_2
        0x7f0d01ce -> :sswitch_0
        0x7f0d026a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f0400bc

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfileNew;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->initialseControls()V

    .line 81
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->setProfileValue()V

    .line 82
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->userChoosenTask:Ljava/lang/String;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->cameraIntent()V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->userChoosenTask:Ljava/lang/String;

    const-string v1, "Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/iot/engine/UserProfileNew;->galleryIntent()V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew;->txtHeading:Landroid/widget/TextView;

    const-string v1, "User Account"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method
