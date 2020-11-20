.class public Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropResult"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCropPoints:[F

.field private final mCropRect:Landroid/graphics/Rect;

.field private final mError:Ljava/lang/Exception;

.field private final mRotation:I

.field private final mSampleSize:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;II)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "error"    # Ljava/lang/Exception;
    .param p4, "cropPoints"    # [F
    .param p5, "cropRect"    # Landroid/graphics/Rect;
    .param p6, "rotation"    # I
    .param p7, "sampleSize"    # I

    .prologue
    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 1732
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mUri:Landroid/net/Uri;

    .line 1733
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    .line 1734
    iput-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropPoints:[F

    .line 1735
    iput-object p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropRect:Landroid/graphics/Rect;

    .line 1736
    iput p6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mRotation:I

    .line 1737
    iput p7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mSampleSize:I

    .line 1738
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCropPoints()[F
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropPoints:[F

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 1788
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mRotation:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .prologue
    .line 1795
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mSampleSize:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
