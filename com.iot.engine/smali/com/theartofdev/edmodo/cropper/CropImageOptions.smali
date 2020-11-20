.class public Lcom/theartofdev/edmodo/cropper/CropImageOptions;
.super Ljava/lang/Object;
.source "CropImageOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/theartofdev/edmodo/cropper/CropImageOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activityMenuIconColor:I

.field public activityTitle:Ljava/lang/String;

.field public allowCounterRotation:Z

.field public allowRotation:Z

.field public aspectRatioX:I

.field public aspectRatioY:I

.field public autoZoomEnabled:Z

.field public backgroundColor:I

.field public borderCornerColor:I

.field public borderCornerLength:F

.field public borderCornerOffset:F

.field public borderCornerThickness:F

.field public borderLineColor:I

.field public borderLineThickness:F

.field public cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

.field public fixAspectRatio:Z

.field public guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

.field public guidelinesColor:I

.field public guidelinesThickness:F

.field public initialCropWindowPaddingRatio:F

.field public initialCropWindowRectangle:Landroid/graphics/Rect;

.field public initialRotation:I

.field public maxCropResultHeight:I

.field public maxCropResultWidth:I

.field public maxZoom:I

.field public minCropResultHeight:I

.field public minCropResultWidth:I

.field public minCropWindowHeight:I

.field public minCropWindowWidth:I

.field public multiTouchEnabled:Z

.field public noOutputImage:Z

.field public outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public outputCompressQuality:I

.field public outputRequestHeight:I

.field public outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field public outputRequestWidth:I

.field public outputUri:Landroid/net/Uri;

.field public rotationDegrees:I

.field public scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

.field public showCropOverlay:Z

.field public showProgressBar:Z

.field public snapRadius:F

.field public touchRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions$1;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions$1;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v6, 0x42280000    # 42.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 273
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .line 274
    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    .line 275
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    .line 276
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 277
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 278
    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    .line 279
    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    .line 280
    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 281
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 282
    const/4 v1, 0x4

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    .line 283
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 285
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 286
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 287
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 289
    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    .line 290
    const/16 v1, 0xaa

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    .line 291
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 292
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    .line 293
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    .line 294
    const/4 v1, -0x1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 296
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    .line 297
    const/16 v1, 0xaa

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    .line 298
    const/16 v1, 0x77

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 300
    invoke-static {v2, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 301
    invoke-static {v2, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 302
    const/16 v1, 0x28

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 303
    const/16 v1, 0x28

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    .line 304
    const v1, 0x1869f

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 305
    const v1, 0x1869f

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 307
    const-string v1, ""

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/String;

    .line 308
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 310
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    .line 311
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 312
    const/16 v1, 0x5a

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    .line 313
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    .line 314
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    .line 315
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 316
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    .line 319
    const/4 v1, -0x1

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    .line 320
    iput-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    .line 321
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    .line 322
    const/16 v1, 0x5a

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    .line 323
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    .line 332
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 333
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 360
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    .line 365
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    .line 367
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    .line 372
    return-void

    :cond_0
    move v0, v2

    .line 334
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 335
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 336
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 337
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 340
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 366
    goto :goto_5

    :cond_6
    move v0, v2

    .line 369
    goto :goto_6

    :cond_7
    move v1, v2

    .line 370
    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public validate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 432
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    if-gez v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max zoom to a number < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set touch radius value to a number <= 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 439
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set initial crop window padding value to a number < 0 or >= 0.5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_3
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    if-gtz v0, :cond_4

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_4
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    if-gtz v0, :cond_5

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_5
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set line thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_6
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set corner thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_7
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set guidelines thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_8
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    if-gez v0, :cond_9

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop window height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_9
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    if-gez v0, :cond_a

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_a
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    if-gez v0, :cond_b

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_b
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    if-ge v0, v1, :cond_c

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result width to smaller value than min crop result width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_c
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    if-ge v0, v1, :cond_d

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result height to smaller value than min crop result height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_d
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    if-gez v0, :cond_e

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_e
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    if-gez v0, :cond_f

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_f
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    if-ltz v0, :cond_10

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_11

    .line 478
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set rotation degrees value to a number < 0 or > 360"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_11
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 378
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 379
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 382
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 383
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 385
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 387
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 388
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 391
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 393
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 394
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 395
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 397
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 408
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 415
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 417
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    if-eqz v0, :cond_7

    :goto_7
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 418
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return-void

    :cond_0
    move v0, v2

    .line 381
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 382
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 383
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 384
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 387
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 413
    goto :goto_5

    :cond_6
    move v0, v2

    .line 416
    goto :goto_6

    :cond_7
    move v1, v2

    .line 417
    goto :goto_7
.end method
