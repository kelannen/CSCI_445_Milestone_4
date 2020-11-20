.class public final Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityBuilder"
.end annotation


# instance fields
.field private final mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

.field private final mSource:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "source"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    .line 392
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/theartofdev/edmodo/cropper/CropImage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Lcom/theartofdev/edmodo/cropper/CropImage$1;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 399
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;

    invoke-virtual {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 410
    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 412
    return-object v0
.end method

.method public setActivityMenuIconColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "activityMenuIconColor"    # I

    .prologue
    .line 700
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 701
    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "activityTitle"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/String;

    .line 692
    return-object p0
.end method

.method public setAllowCounterRotation(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "allowCounterRotation"    # Z

    .prologue
    .line 794
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    .line 795
    return-object p0
.end method

.method public setAllowRotation(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "allowRotation"    # Z

    .prologue
    .line 784
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    .line 785
    return-object p0
.end method

.method public setAspectRatio(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 2
    .param p1, "aspectRatioX"    # I
    .param p2, "aspectRatioY"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 568
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 569
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 570
    return-object p0
.end method

.method public setAutoZoomEnabled(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "autoZoomEnabled"    # Z

    .prologue
    .line 518
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 519
    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 650
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 651
    return-object p0
.end method

.method public setBorderCornerColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "borderCornerColor"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 624
    return-object p0
.end method

.method public setBorderCornerLength(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "borderCornerLength"    # F

    .prologue
    .line 614
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    .line 615
    return-object p0
.end method

.method public setBorderCornerOffset(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "borderCornerOffset"    # F

    .prologue
    .line 605
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    .line 606
    return-object p0
.end method

.method public setBorderCornerThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "borderCornerThickness"    # F

    .prologue
    .line 596
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 597
    return-object p0
.end method

.method public setBorderLineColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "borderLineColor"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    .line 588
    return-object p0
.end method

.method public setBorderLineThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "borderLineThickness"    # F

    .prologue
    .line 578
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    .line 579
    return-object p0
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "cropShape"    # Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 459
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .line 460
    return-object p0
.end method

.method public setFixAspectRatio(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .prologue
    .line 554
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 555
    return-object p0
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "guidelines"    # Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 490
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 491
    return-object p0
.end method

.method public setGuidelinesColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "guidelinesColor"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    .line 642
    return-object p0
.end method

.method public setGuidelinesThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "guidelinesThickness"    # F

    .prologue
    .line 632
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    .line 633
    return-object p0
.end method

.method public setInitialCropWindowPaddingRatio(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "initialCropWindowPaddingRatio"    # F

    .prologue
    .line 545
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 546
    return-object p0
.end method

.method public setInitialCropWindowRectangle(Landroid/graphics/Rect;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "initialCropWindowRectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    .line 767
    return-object p0
.end method

.method public setInitialRotation(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "initialRotation"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    .line 776
    return-object p0
.end method

.method public setMaxCropResultSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "maxCropResultWidth"    # I
    .param p2, "maxCropResultHeight"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 682
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 683
    return-object p0
.end method

.method public setMaxZoom(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "maxZoom"    # I

    .prologue
    .line 536
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    .line 537
    return-object p0
.end method

.method public setMinCropResultSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "minCropResultWidth"    # I
    .param p2, "minCropResultHeight"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 671
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    .line 672
    return-object p0
.end method

.method public setMinCropWindowSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "minCropWindowWidth"    # I
    .param p2, "minCropWindowHeight"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 660
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 661
    return-object p0
.end method

.method public setMultiTouchEnabled(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "multiTouchEnabled"    # Z

    .prologue
    .line 527
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 528
    return-object p0
.end method

.method public setNoOutputImage(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "noOutputImage"    # Z

    .prologue
    .line 757
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    .line 758
    return-object p0
.end method

.method public setOutputCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "outputCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 719
    return-object p0
.end method

.method public setOutputCompressQuality(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "outputCompressQuality"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    .line 728
    return-object p0
.end method

.method public setOutputUri(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    .line 710
    return-object p0
.end method

.method public setRequestedSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 737
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->setRequestedSize(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestedSize(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    .line 746
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    .line 747
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p3, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 748
    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "rotationDegrees"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    .line 804
    return-object p0
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "scaleType"    # Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 499
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 500
    return-object p0
.end method

.method public setShowCropOverlay(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "showCropOverlay"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    .line 510
    return-object p0
.end method

.method public setSnapRadius(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "snapRadius"    # F

    .prologue
    .line 470
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    .line 471
    return-object p0
.end method

.method public setTouchRadius(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1, "touchRadius"    # F

    .prologue
    .line 481
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    .line 482
    return-object p0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 421
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 422
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 423
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 433
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 442
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 451
    return-void
.end method
