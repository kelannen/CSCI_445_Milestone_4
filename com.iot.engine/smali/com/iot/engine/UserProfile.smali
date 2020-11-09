.class public Lcom/iot/engine/UserProfile;
.super Landroid/app/Activity;
.source "UserProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;
    }
.end annotation


# static fields
.field private static final CAMERA_CODE:I = 0x65

.field private static final CROPING_CODE:I = 0x12d

.field private static final GALLERY_CODE:I = 0xc9

.field private static final REQUEST_PERMISSION_REQ_CODE:I = 0x22


# instance fields
.field bmImg:Landroid/graphics/Bitmap;

.field edittxt_date:Landroid/widget/EditText;

.field imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field imgString:Ljava/lang/String;

.field private mBase64String:Ljava/lang/String;

.field mBtnRegister:Landroid/widget/Button;

.field private mDate:Ljava/lang/String;

.field mEdtEmail:Landroid/widget/EditText;

.field mEdtFirstName:Landroid/widget/EditText;

.field mEdtLastName:Landroid/widget/EditText;

.field mEdtPhone:Landroid/widget/EditText;

.field private mEmail:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mImageCaptureUri:Landroid/net/Uri;

.field mImageedit:Landroid/widget/ImageView;

.field mImgBack:Landroid/widget/ImageView;

.field private mLastName:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private outPutFile:Ljava/io/File;

.field private pDialog:Landroid/app/ProgressDialog;

.field private sessionManager:LSession/SessionManager;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iot/engine/UserProfile;->outPutFile:Ljava/io/File;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/UserProfile;->mBase64String:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iot/engine/UserProfile;->selectimage()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iot/engine/UserProfile;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/UserProfile;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/UserProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/UserProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iot/engine/UserProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->mBase64String:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iot/engine/UserProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iot/engine/UserProfile;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/iot/engine/UserProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/iot/engine/UserProfile;->parseUpdateResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/iot/engine/UserProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/UserProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    return-void
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/16 v9, 0x200

    const/4 v6, 0x0

    .line 164
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 166
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 169
    const/16 v0, 0x200

    .line 170
    .local v0, "REQUIRED_SIZE":I
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v5, "width_tmp":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 171
    .local v1, "height_tmp":I
    const/4 v4, 0x1

    .line 173
    .local v4, "scale":I
    :goto_0
    div-int/lit8 v7, v5, 0x2

    if-lt v7, v9, :cond_0

    div-int/lit8 v7, v1, 0x2

    if-ge v7, v9, :cond_1

    .line 181
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 182
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 186
    .end local v0    # "REQUIRED_SIZE":I
    .end local v1    # "height_tmp":I
    .end local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "scale":I
    .end local v5    # "width_tmp":I
    :goto_1
    return-object v6

    .line 175
    .restart local v0    # "REQUIRED_SIZE":I
    .restart local v1    # "height_tmp":I
    .restart local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "scale":I
    .restart local v5    # "width_tmp":I
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 176
    div-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 184
    .end local v0    # "REQUIRED_SIZE":I
    .end local v1    # "height_tmp":I
    .end local v2    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "scale":I
    .end local v5    # "width_tmp":I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 401
    :cond_0
    return-void
.end method

.method private initialseControls()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    new-instance v3, LSession/SessionManager;

    invoke-direct {v3, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->sessionManager:LSession/SessionManager;

    .line 256
    const v3, 0x7f0d0211

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    .line 257
    const v3, 0x7f0d0212

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    .line 258
    const v3, 0x7f0d0139

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    .line 259
    const v3, 0x7f0d0213

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    .line 261
    const v3, 0x7f0d014a

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->mBtnRegister:Landroid/widget/Button;

    .line 262
    const v3, 0x7f0d026a

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->mImageedit:Landroid/widget/ImageView;

    .line 264
    const v3, 0x7f0d01ce

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 265
    const v3, 0x7f0d0156

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->mImgBack:Landroid/widget/ImageView;

    .line 267
    const v3, 0x7f0d010b

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->edittxt_date:Landroid/widget/EditText;

    .line 268
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->mBtnRegister:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v3, 0x7f0d00eb

    invoke-virtual {p0, v3}, Lcom/iot/engine/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->txtHeading:Landroid/widget/TextView;

    .line 270
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->pDialog:Landroid/app/ProgressDialog;

    .line 273
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->pDialog:Landroid/app/ProgressDialog;

    const-string v4, "Kindly wait..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 276
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 277
    .local v0, "posXY":[I
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v3, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getLocationOnScreen([I)V

    .line 278
    aget v1, v0, v5

    .line 279
    .local v1, "x":I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 284
    .local v2, "y":I
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->mImageedit:Landroid/widget/ImageView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 285
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->mImageedit:Landroid/widget/ImageView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 288
    return-void
.end method

.method private isFieldSubmtted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 503
    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 505
    const-string v1, "Enter First Name"

    invoke-direct {p0, v1}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    .line 523
    :goto_0
    return v0

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 509
    const-string v1, "Enter Last Name"

    invoke-direct {p0, v1}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 512
    const-string v1, "Enter Email"

    invoke-direct {p0, v1}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {p0}, Lcom/iot/engine/UserProfile;->validateEmail()Z

    move-result v2

    if-nez v2, :cond_3

    .line 515
    const-string v1, "Enter Valid Email ID"

    invoke-direct {p0, v1}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_3
    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    .line 518
    const-string v1, "Enter Valid Mobile Number"

    invoke-direct {p0, v1}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 523
    goto :goto_0
.end method

.method private myToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 556
    return-void
.end method

.method private parseUpdateResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 372
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "jData":Lorg/json/JSONObject;
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    .end local v0    # "jData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 379
    .restart local v0    # "jData":Lorg/json/JSONObject;
    :cond_0
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v0    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private saveUserDetailInSharedPreference()V
    .locals 9

    .prologue
    .line 387
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->sessionManager:LSession/SessionManager;

    const-string v1, ""

    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/UserProfile;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, LSession/SessionManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "Successfully Updated"

    invoke-direct {p0, v0}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    .line 389
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 390
    .local v8, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/UserProfile;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 391
    invoke-virtual {p0}, Lcom/iot/engine/UserProfile;->finish()V

    .line 393
    return-void
.end method

.method private selectimage()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method private setUserDetail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "sessionManager":LSession/SessionManager;
    invoke-virtual {v0}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, LSession/SessionManager;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, LSession/SessionManager;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, LSession/SessionManager;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, LSession/SessionManager;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 199
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setUserImage()V
    .locals 5

    .prologue
    .line 405
    new-instance v2, LSession/SessionManager;

    invoke-direct {v2, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 406
    .local v2, "sessionManager":LSession/SessionManager;
    invoke-virtual {v2}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "path":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 410
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->bmImg:Landroid/graphics/Bitmap;

    .line 412
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 413
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v4, p0, Lcom/iot/engine/UserProfile;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 414
    iget-object v3, p0, Lcom/iot/engine/UserProfile;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 415
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iot/engine/UserProfile;->bmImg:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 397
    :cond_0
    return-void
.end method

.method private updateUserAccount()V
    .locals 8

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/iot/engine/UserProfile;->showProgressDialog()V

    .line 434
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v7, "jsonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    iget-object v2, p0, Lcom/iot/engine/UserProfile;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v1, "firstName"

    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v1, "lastName"

    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "email"

    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/iot/engine/UserProfile;->getBytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfile;->imgString:Ljava/lang/String;

    .line 443
    const-string v1, "image"

    iget-object v2, p0, Lcom/iot/engine/UserProfile;->imgString:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "param"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v0, Lcom/iot/engine/UserProfile$5;

    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "user"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v5, Lcom/iot/engine/UserProfile$3;

    invoke-direct {v5, p0}, Lcom/iot/engine/UserProfile$3;-><init>(Lcom/iot/engine/UserProfile;)V

    new-instance v6, Lcom/iot/engine/UserProfile$4;

    invoke-direct {v6, p0}, Lcom/iot/engine/UserProfile$4;-><init>(Lcom/iot/engine/UserProfile;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/iot/engine/UserProfile$5;-><init>(Lcom/iot/engine/UserProfile;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 498
    .local v0, "myRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {}, Lapp/AppController;->getInstance()Lapp/AppController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lapp/AppController;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 499
    return-void
.end method


# virtual methods
.method public getBytesFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 427
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 428
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 429
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    new-instance v4, LSession/SessionManager;

    invoke-direct {v4, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 224
    .local v4, "sessionManager":LSession/SessionManager;
    const/16 v5, 0xc9

    if-ne p1, v5, :cond_1

    if-ne p2, v6, :cond_1

    if-eqz p3, :cond_1

    .line 225
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/iot/engine/UserProfile;->mImageCaptureUri:Landroid/net/Uri;

    .line 226
    iget-object v5, p0, Lcom/iot/engine/UserProfile;->outPutFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LSession/SessionManager;->saveUserImage(Ljava/lang/String;)V

    .line 227
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gallery Image URI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/UserProfile;->mImageCaptureUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/16 v5, 0x65

    if-ne p1, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 232
    iget-object v5, p0, Lcom/iot/engine/UserProfile;->outPutFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LSession/SessionManager;->saveUserImage(Ljava/lang/String;)V

    .line 234
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera Image URI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/UserProfile;->mImageCaptureUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const/16 v5, 0x12d

    if-ne p1, v5, :cond_0

    .line 239
    :try_start_0
    iget-object v5, p0, Lcom/iot/engine/UserProfile;->outPutFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    iget-object v5, p0, Lcom/iot/engine/UserProfile;->outPutFile:Ljava/io/File;

    invoke-direct {p0, v5}, Lcom/iot/engine/UserProfile;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 241
    .local v3, "photo":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    .local v1, "bao":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 243
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 244
    .local v0, "ba":[B
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iot/engine/UserProfile;->mBase64String:Ljava/lang/String;

    .line 245
    iget-object v5, p0, Lcom/iot/engine/UserProfile;->imgProfileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v5, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v0    # "ba":[B
    .end local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "photo":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/iot/engine/UserProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Error while save image"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/iot/engine/UserProfile;->isFieldSubmtted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/iot/engine/UserProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 300
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/UserProfile;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 301
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfile;->mFirstName:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfile;->mLastName:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfile;->mEmail:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfile;->mPhone:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/iot/engine/UserProfile;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/UserProfile;->mDate:Ljava/lang/String;

    .line 309
    new-instance v1, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;

    invoke-direct {v1, p0}, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;-><init>(Lcom/iot/engine/UserProfile;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 313
    :cond_1
    const-string v1, "Check internet connection!!!"

    invoke-direct {p0, v1}, Lcom/iot/engine/UserProfile;->myToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_2
    const-string v1, "You are a demo user."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 326
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const-string v1, "You are a demo user."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d014a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0400be

    invoke-virtual {p0, v0}, Lcom/iot/engine/UserProfile;->setContentView(I)V

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iot/engine/UserProfile;->outPutFile:Ljava/io/File;

    .line 81
    invoke-virtual {p0}, Lcom/iot/engine/UserProfile;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 82
    invoke-direct {p0}, Lcom/iot/engine/UserProfile;->initialseControls()V

    .line 83
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->txtHeading:Landroid/widget/TextView;

    const-string v1, "User Account"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0}, Lcom/iot/engine/UserProfile;->setUserDetail()V

    .line 86
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->mImgBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/iot/engine/UserProfile$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/UserProfile$1;-><init>(Lcom/iot/engine/UserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/iot/engine/UserProfile;->mImageedit:Landroid/widget/ImageView;

    new-instance v1, Lcom/iot/engine/UserProfile$2;

    invoke-direct {v1, p0}, Lcom/iot/engine/UserProfile$2;-><init>(Lcom/iot/engine/UserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x22

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 210
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v4

    invoke-static {p0, v0, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v4

    invoke-static {p0, v0, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public phoneNumber()Z
    .locals 3

    .prologue
    .line 527
    const-string v1, "/^[!0]*[0-9-\\)\\(]+$/"

    .line 528
    .local v1, "phonepattern":Ljava/lang/String;
    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "phoneno":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const/4 v2, 0x1

    .line 533
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public validateEmail()Z
    .locals 3

    .prologue
    .line 540
    iget-object v2, p0, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "emailInput":Ljava/lang/String;
    const-string v1, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 545
    .local v1, "emailPattern":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 547
    const/4 v2, 0x0

    .line 550
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
