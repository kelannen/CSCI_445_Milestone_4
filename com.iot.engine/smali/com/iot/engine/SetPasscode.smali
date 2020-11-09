.class public Lcom/iot/engine/SetPasscode;
.super Landroid/app/Activity;
.source "SetPasscode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/SetPasscode$AsyncEnterLockPasscode;
    }
.end annotation


# instance fields
.field private arrShortcut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field arrayList:Ljava/util/ArrayList;
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

.field btnClear:Landroid/widget/Button;

.field btnEight:Landroid/widget/Button;

.field btnFive:Landroid/widget/Button;

.field btnFour:Landroid/widget/Button;

.field btnNine:Landroid/widget/Button;

.field btnOne:Landroid/widget/Button;

.field btnSeven:Landroid/widget/Button;

.field btnSix:Landroid/widget/Button;

.field btnThree:Landroid/widget/Button;

.field btnTwo:Landroid/widget/Button;

.field btnZero:Landroid/widget/Button;

.field private db:LDatabase/DatabaseHandler;

.field private llAddCamera:Landroid/widget/LinearLayout;

.field private llPlayVideo:Landroid/widget/LinearLayout;

.field private llTitleScreen:Landroid/widget/LinearLayout;

.field lockcode:Ljava/lang/String;

.field private mSwitchId:Ljava/lang/String;

.field private messageType:Ljava/lang/String;

.field newArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private session:LSession/SessionManager;

.field txtFour:Landroid/widget/TextView;

.field txtOne:Landroid/widget/TextView;

.field txtThree:Landroid/widget/TextView;

.field txtTwo:Landroid/widget/TextView;

.field private vidAddress:Ljava/lang/String;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->mSwitchId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/SetPasscode;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SetPasscode;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iot/engine/SetPasscode;->setPasscodeText()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/SetPasscode;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SetPasscode;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iot/engine/SetPasscode;->compareFourDigitPasscode()V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/SetPasscode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetPasscode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/SetPasscode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetPasscode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->mSwitchId:Ljava/lang/String;

    return-object v0
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 399
    return-void
.end method

.method private compareFourDigitPasscode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v2, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 346
    const-string v0, ""

    .line 348
    .local v0, "listString":Ljava/lang/String;
    iget-object v2, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    goto :goto_0

    .line 351
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/SetPasscode;->lockcode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    iget-object v2, p0, Lcom/iot/engine/SetPasscode;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DemoUser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 353
    new-instance v2, Lcom/iot/engine/SetPasscode$AsyncEnterLockPasscode;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/iot/engine/SetPasscode$AsyncEnterLockPasscode;-><init>(Lcom/iot/engine/SetPasscode;Lcom/iot/engine/SetPasscode$1;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iot/engine/SetPasscode$AsyncEnterLockPasscode;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 364
    .end local v0    # "listString":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 355
    .restart local v0    # "listString":Ljava/lang/String;
    :cond_2
    const-string v2, "You are Demo user"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 360
    :cond_3
    const v2, 0x7f06008a

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 361
    invoke-direct {p0}, Lcom/iot/engine/SetPasscode;->clearData()V

    goto :goto_1
.end method

.method private initiControl()V
    .locals 1

    .prologue
    .line 241
    const v0, 0x7f0d0202

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f0d0203

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0d0204

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0d0205

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnOne:Landroid/widget/Button;

    .line 247
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnTwo:Landroid/widget/Button;

    .line 248
    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnThree:Landroid/widget/Button;

    .line 249
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnFour:Landroid/widget/Button;

    .line 250
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnFive:Landroid/widget/Button;

    .line 251
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnSix:Landroid/widget/Button;

    .line 252
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnSeven:Landroid/widget/Button;

    .line 253
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnEight:Landroid/widget/Button;

    .line 254
    const v0, 0x7f0d00cd

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnNine:Landroid/widget/Button;

    .line 255
    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnZero:Landroid/widget/Button;

    .line 256
    const v0, 0x7f0d0206

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnClear:Landroid/widget/Button;

    .line 257
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->btnCancel:Landroid/widget/Button;

    .line 258
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->videoView:Landroid/widget/VideoView;

    .line 260
    const v0, 0x7f0d01ff

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->llTitleScreen:Landroid/widget/LinearLayout;

    .line 261
    const v0, 0x7f0d0200

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->llAddCamera:Landroid/widget/LinearLayout;

    .line 262
    const v0, 0x7f0d0201

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->llPlayVideo:Landroid/widget/LinearLayout;

    .line 264
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->llAddCamera:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method private playVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 368
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->session:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getLockSwitchId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/SetPasscode;->mSwitchId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->arrShortcut:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llTitleScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llPlayVideo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llAddCamera:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->arrShortcut:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "camera_local_ip"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->arrShortcut:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "camera_local_port"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/SetPasscode;->vidAddress:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->vidAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 376
    .local v0, "video":Landroid/net/Uri;
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 377
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 390
    .end local v0    # "video":Landroid/net/Uri;
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llTitleScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llPlayVideo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llAddCamera:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llTitleScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llPlayVideo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->llAddCamera:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPasscodeText()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f02019d

    const v3, 0x7f020187

    .line 272
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 281
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 282
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 283
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 292
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 293
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 294
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 296
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 305
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 307
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 308
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 314
    :pswitch_3
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 319
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 320
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 322
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 324
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 327
    :pswitch_4
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 333
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtTwo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 334
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtThree:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 335
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->txtFour:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 407
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0200
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetPasscode;->setContentView(I)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->newArrayList:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lcom/iot/engine/SetPasscode;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->mSwitchId:Ljava/lang/String;

    .line 63
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->session:LSession/SessionManager;

    .line 64
    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Internet"

    :goto_0
    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->messageType:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->session:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getLockCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->lockcode:Ljava/lang/String;

    .line 66
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->db:LDatabase/DatabaseHandler;

    .line 67
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getShorcutFromCamera()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SetPasscode;->arrShortcut:Ljava/util/ArrayList;

    .line 68
    invoke-direct {p0}, Lcom/iot/engine/SetPasscode;->initiControl()V

    .line 69
    invoke-direct {p0}, Lcom/iot/engine/SetPasscode;->playVideo()V

    .line 71
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnOne:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$1;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$1;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnTwo:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$2;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$2;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnThree:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$3;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$3;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnFour:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$4;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$4;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnFive:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$5;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$5;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnSix:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$6;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$6;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnSeven:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$7;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$7;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnEight:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$8;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$8;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnNine:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$9;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$9;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnZero:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$10;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$10;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnClear:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$11;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$11;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/iot/engine/SetPasscode;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/iot/engine/SetPasscode$12;

    invoke-direct {v1, p0}, Lcom/iot/engine/SetPasscode$12;-><init>(Lcom/iot/engine/SetPasscode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void

    .line 64
    :cond_0
    const-string v0, "Localhub"

    goto/16 :goto_0
.end method
