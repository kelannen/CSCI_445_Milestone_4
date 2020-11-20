.class public Lcom/iot/engine/GoRemote/AddChannel;
.super Landroid/app/Activity;
.source "AddChannel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddChannel"


# instance fields
.field private REQUEST_CAMERA:I

.field private SELECT_FILE:I

.field arraylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field btnCancel:Landroid/widget/Button;

.field btnCut:Landroid/widget/Button;

.field btnEight:Landroid/widget/Button;

.field btnFive:Landroid/widget/Button;

.field btnFour:Landroid/widget/Button;

.field btnMinus:Landroid/widget/Button;

.field btnNine:Landroid/widget/Button;

.field btnOk:Landroid/widget/Button;

.field btnOne:Landroid/widget/Button;

.field btnSave:Landroid/widget/Button;

.field btnSeven:Landroid/widget/Button;

.field btnSix:Landroid/widget/Button;

.field btnThree:Landroid/widget/Button;

.field btnTwo:Landroid/widget/Button;

.field btnZero:Landroid/widget/Button;

.field channeldown:Landroid/view/View;

.field channelup:Landroid/view/View;

.field db:LDatabase/DatabaseHandler;

.field edtChannelNumber:Landroid/widget/EditText;

.field etChannelName:Landroid/widget/EditText;

.field imgAddChannelImage:Landroid/widget/ImageView;

.field imgBack:Landroid/widget/ImageView;

.field imgOption:Landroid/widget/ImageView;

.field imgRoom:Landroid/widget/ImageView;

.field listString:Ljava/lang/String;

.field private mBase64String:Ljava/lang/String;

.field private mRemoteId:Ljava/lang/String;

.field resultUri:Landroid/net/Uri;

.field txtHeading:Landroid/widget/TextView;

.field private userChoosenTask:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->listString:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->REQUEST_CAMERA:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->SELECT_FILE:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->mBase64String:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/iot/engine/GoRemote/AddChannel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/AddChannel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AddChannel;->userChoosenTask:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/GoRemote/AddChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/AddChannel;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/AddChannel;->cameraIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/GoRemote/AddChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GoRemote/AddChannel;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/AddChannel;->galleryIntent()V

    return-void
.end method

.method private cameraIntent()V
    .locals 5

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "i":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 387
    .local v1, "out":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "profile.png"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    .end local v1    # "out":Ljava/io/File;
    .local v2, "out":Ljava/io/File;
    const-string v3, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 389
    iget v3, p0, Lcom/iot/engine/GoRemote/AddChannel;->REQUEST_CAMERA:I

    invoke-virtual {p0, v0, v3}, Lcom/iot/engine/GoRemote/AddChannel;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    return-void
.end method

.method private galleryIntent()V
    .locals 3

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v1, "Select File"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/iot/engine/GoRemote/AddChannel;->SELECT_FILE:I

    invoke-virtual {p0, v1, v2}, Lcom/iot/engine/GoRemote/AddChannel;->startActivityForResult(Landroid/content/Intent;I)V

    .line 381
    return-void
.end method

.method private initializeControls()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->imgBack:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->txtHeading:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Favourite Channel"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnCancel:Landroid/widget/Button;

    .line 81
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnSave:Landroid/widget/Button;

    .line 82
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnOne:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnFour:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnSeven:Landroid/widget/Button;

    .line 85
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnMinus:Landroid/widget/Button;

    .line 86
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnTwo:Landroid/widget/Button;

    .line 87
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnFive:Landroid/widget/Button;

    .line 88
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnEight:Landroid/widget/Button;

    .line 89
    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnZero:Landroid/widget/Button;

    .line 90
    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnThree:Landroid/widget/Button;

    .line 91
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnSix:Landroid/widget/Button;

    .line 92
    const v0, 0x7f0d00cd

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnNine:Landroid/widget/Button;

    .line 93
    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnOk:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnCut:Landroid/widget/Button;

    .line 96
    const v0, 0x7f0d00d0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->channelup:Landroid/view/View;

    .line 97
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->channeldown:Landroid/view/View;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->arraylist:Ljava/util/ArrayList;

    .line 100
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->db:LDatabase/DatabaseHandler;

    .line 102
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->imgAddChannelImage:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->etChannelName:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnOne:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnFour:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnSeven:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnMinus:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnTwo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnFive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnEight:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnZero:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnThree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnSix:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnNine:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->btnCut:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->channelup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->channeldown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->imgAddChannelImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->etChannelName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method private onCaptureImageResult(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 462
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 463
    .local v0, "out":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "profile.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 465
    .end local v0    # "out":Ljava/io/File;
    .local v1, "out":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/CropImage;->activity(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v2

    sget-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->start(Landroid/app/Activity;)V

    .line 467
    return-void
.end method

.method private onSelectFromGalleryResult(Landroid/content/Intent;)V
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 445
    :try_start_0
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/AddChannel;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 447
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 448
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 450
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 452
    .local v0, "ba":[B
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/CropImage;->activity(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v4

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {v4, v5}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->start(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v0    # "ba":[B
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private openAlertForMenu()V
    .locals 4

    .prologue
    .line 307
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

    .line 309
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/iot/engine/GoRemote/AddChannel$1;

    invoke-direct {v2, p0, v1}, Lcom/iot/engine/GoRemote/AddChannel$1;-><init>(Lcom/iot/engine/GoRemote/AddChannel;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 334
    return-void
.end method

.method private openAlertForSetChannelName()V
    .locals 6

    .prologue
    .line 338
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 340
    const v4, 0x7f0400a4

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 341
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const v5, 0x7f0800ed

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 343
    const v4, 0x7f0d0239

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 344
    .local v1, "edtChannelName":Landroid/widget/EditText;
    const v4, 0x7f0d01b6

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 345
    .local v3, "tvOK":Landroid/widget/TextView;
    const v4, 0x7f0d01b5

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 347
    .local v2, "tvCancel":Landroid/widget/TextView;
    new-instance v4, Lcom/iot/engine/GoRemote/AddChannel$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/iot/engine/GoRemote/AddChannel$2;-><init>(Lcom/iot/engine/GoRemote/AddChannel;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance v4, Lcom/iot/engine/GoRemote/AddChannel$3;

    invoke-direct {v4, p0, v0}, Lcom/iot/engine/GoRemote/AddChannel$3;-><init>(Lcom/iot/engine/GoRemote/AddChannel;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 374
    return-void
.end method


# virtual methods
.method public getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5
    .param p1, "inContext"    # Landroid/content/Context;
    .param p2, "inImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 433
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 434
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 435
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Title"

    const/4 v4, 0x0

    invoke-static {v2, p2, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x190

    const/4 v6, -0x1

    .line 394
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    if-ne p2, v6, :cond_0

    .line 400
    iget v5, p0, Lcom/iot/engine/GoRemote/AddChannel;->SELECT_FILE:I

    if-ne p1, v5, :cond_2

    .line 401
    invoke-direct {p0, p3}, Lcom/iot/engine/GoRemote/AddChannel;->onSelectFromGalleryResult(Landroid/content/Intent;)V

    .line 408
    :cond_0
    :goto_0
    const/16 v5, 0xcb

    if-ne p1, v5, :cond_1

    .line 409
    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/CropImage;->getActivityResult(Landroid/content/Intent;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;

    move-result-object v4

    .line 410
    .local v4, "result":Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    if-ne p2, v6, :cond_3

    .line 412
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getUri()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/iot/engine/GoRemote/AddChannel;->resultUri:Landroid/net/Uri;

    .line 414
    iget-object v5, p0, Lcom/iot/engine/GoRemote/AddChannel;->imgAddChannelImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/iot/engine/GoRemote/AddChannel;->resultUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 416
    iget-object v5, p0, Lcom/iot/engine/GoRemote/AddChannel;->imgAddChannelImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 417
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 418
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 419
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {v2, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 420
    const/4 v5, 0x1

    invoke-static {v2, v7, v7, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 422
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 423
    .local v0, "b":[B
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iot/engine/GoRemote/AddChannel;->mBase64String:Ljava/lang/String;

    .line 424
    const-string v5, "URL"

    iget-object v6, p0, Lcom/iot/engine/GoRemote/AddChannel;->resultUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "b":[B
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "result":Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    :cond_1
    :goto_1
    return-void

    .line 403
    :cond_2
    iget v5, p0, Lcom/iot/engine/GoRemote/AddChannel;->REQUEST_CAMERA:I

    if-ne p1, v5, :cond_0

    .line 404
    invoke-direct {p0, p3}, Lcom/iot/engine/GoRemote/AddChannel;->onCaptureImageResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    .restart local v4    # "result":Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;
    :cond_3
    const/16 v5, 0xcc

    if-ne p2, v5, :cond_1

    .line 428
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;->getError()Ljava/lang/Exception;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 287
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 142
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnOne:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "one":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto :goto_0

    .line 150
    .end local v7    # "one":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnTwo:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 151
    .local v11, "two":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto :goto_0

    .line 157
    .end local v11    # "two":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnThree:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "three":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 164
    .end local v10    # "three":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnFour:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "four":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 171
    .end local v5    # "four":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnFive:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "five":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 178
    .end local v4    # "five":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnSix:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "six":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 185
    .end local v9    # "six":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnSeven:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "seven":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 191
    .end local v8    # "seven":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnEight:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "eight":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 198
    .end local v3    # "eight":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnNine:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "nine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 202
    .end local v6    # "nine":Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->btnZero:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, "zero":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 209
    .end local v12    # "zero":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_1

    .line 211
    const-string v13, "Kindly set channel number"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->db:LDatabase/DatabaseHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->etChannelName:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoRemote/AddChannel;->mRemoteId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, LDatabase/DatabaseHandler;->addChannelNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v13, "Data Added sucessfully"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->finish()V

    goto/16 :goto_0

    .line 223
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_2

    .line 225
    const-string v13, "Kindly set channel number"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 229
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->db:LDatabase/DatabaseHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/GoRemote/AddChannel;->etChannelName:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoRemote/AddChannel;->mRemoteId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, LDatabase/DatabaseHandler;->addChannelNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "refreshChannelList"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 231
    const-string v13, "Data Added sucessfully"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->finish()V

    goto/16 :goto_0

    .line 239
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "channelNumber":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 243
    const-string v13, "Kindly set channel number"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 253
    .end local v1    # "channelNumber":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "channelNummber":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 256
    const-string v13, "Kindly set channel number"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 260
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->setCursor()V

    goto/16 :goto_0

    .line 269
    .end local v2    # "channelNummber":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 281
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoRemote/AddChannel;->finish()V

    goto/16 :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x7f0d00b9 -> :sswitch_c
        0x7f0d00bf -> :sswitch_0
        0x7f0d00c3 -> :sswitch_1
        0x7f0d00c4 -> :sswitch_4
        0x7f0d00c5 -> :sswitch_7
        0x7f0d00c7 -> :sswitch_2
        0x7f0d00c8 -> :sswitch_5
        0x7f0d00c9 -> :sswitch_8
        0x7f0d00ca -> :sswitch_a
        0x7f0d00cb -> :sswitch_3
        0x7f0d00cc -> :sswitch_6
        0x7f0d00cd -> :sswitch_9
        0x7f0d00ce -> :sswitch_b
        0x7f0d00cf -> :sswitch_f
        0x7f0d00d0 -> :sswitch_d
        0x7f0d00d1 -> :sswitch_e
        0x7f0d0156 -> :sswitch_10
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/AddChannel;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/AddChannel;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->mRemoteId:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/AddChannel;->initializeControls()V

    .line 70
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 293
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->userChoosenTask:Ljava/lang/String;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/AddChannel;->cameraIntent()V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->userChoosenTask:Ljava/lang/String;

    const-string v1, "Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/AddChannel;->galleryIntent()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method public setCursor()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel;->edtChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 133
    return-void
.end method
