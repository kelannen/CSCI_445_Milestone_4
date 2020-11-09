.class final Lcom/theartofdev/edmodo/cropper/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;,
        Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    }
.end annotation


# static fields
.field static final EMPTY_RECT:Landroid/graphics/Rect;

.field static final EMPTY_RECT_F:Landroid/graphics/RectF;

.field static final POINTS:[F

.field static final POINTS2:[F

.field static final RECT:Landroid/graphics/RectF;

.field static mMaxTextureSize:I

.field static mStateBitmap:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    .line 60
    new-array v0, v1, [F

    sput-object v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    .line 65
    new-array v0, v1, [F

    sput-object v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSizeByMaxTextureSize(II)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 552
    const/4 v0, 0x1

    .line 553
    .local v0, "inSampleSize":I
    sget v1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mMaxTextureSize:I

    if-nez v1, :cond_0

    .line 554
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getMaxTextureSize()I

    move-result v1

    sput v1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mMaxTextureSize:I

    .line 556
    :cond_0
    sget v1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mMaxTextureSize:I

    if-lez v1, :cond_2

    .line 557
    :goto_0
    div-int v1, p1, v0

    sget v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mMaxTextureSize:I

    if-gt v1, v2, :cond_1

    div-int v1, p0, v0

    sget v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mMaxTextureSize:I

    if-le v1, v2, :cond_2

    .line 558
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 561
    :cond_2
    return v0
.end method

.method private static calculateInSampleSizeByReqestedSize(IIII)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 538
    const/4 v0, 0x1

    .line 539
    .local v0, "inSampleSize":I
    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    .line 540
    :cond_0
    :goto_0
    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_1

    div-int/lit8 v1, p0, 0x2

    div-int/2addr v1, v0

    if-le v1, p2, :cond_1

    .line 541
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 544
    :cond_1
    return v0
.end method

.method private static closeSafe(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 669
    if-eqz p0, :cond_0

    .line 671
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;[FIZII)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "points"    # [F
    .param p2, "degreesRotated"    # I
    .param p3, "fixAspectRatio"    # Z
    .param p4, "aspectRatioX"    # I
    .param p5, "aspectRatioY"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v8

    .line 157
    .local v8, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 159
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 161
    .local v6, "result":Landroid/graphics/Bitmap;
    if-ne v6, p0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 167
    :cond_0
    rem-int/lit8 v0, p2, 0x5a

    if-eqz v0, :cond_1

    move-object v7, p1

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 170
    invoke-static/range {v6 .. v12}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 173
    :cond_1
    return-object v6
.end method

.method public static cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIII)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loadedImageUri"    # Landroid/net/Uri;
    .param p2, "points"    # [F
    .param p3, "degreesRotated"    # I
    .param p4, "orgWidth"    # I
    .param p5, "orgHeight"    # I
    .param p6, "fixAspectRatio"    # Z
    .param p7, "aspectRatioX"    # I
    .param p8, "aspectRatioY"    # I
    .param p9, "reqWidth"    # I
    .param p10, "reqHeight"    # I

    .prologue
    .line 183
    const/4 v11, 0x1

    .local v11, "sampleMulti":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 187
    :try_start_0
    invoke-static/range {v0 .. v11}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIII)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 191
    :catch_0
    move-exception v12

    .line 193
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    mul-int/lit8 v11, v11, 0x2

    .line 194
    const/16 v0, 0x10

    if-le v11, v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle OOM by sampling ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIII)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loadedImageUri"    # Landroid/net/Uri;
    .param p2, "points"    # [F
    .param p3, "degreesRotated"    # I
    .param p4, "orgWidth"    # I
    .param p5, "orgHeight"    # I
    .param p6, "fixAspectRatio"    # Z
    .param p7, "aspectRatioX"    # I
    .param p8, "aspectRatioY"    # I
    .param p9, "reqWidth"    # I
    .param p10, "reqHeight"    # I
    .param p11, "sampleMulti"    # I

    .prologue
    .line 349
    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v3

    .line 351
    .local v3, "rect":Landroid/graphics/Rect;
    if-lez p9, :cond_1

    move/from16 v4, p9

    .line 352
    .local v4, "width":I
    :goto_0
    if-lez p10, :cond_2

    move/from16 v5, p10

    .line 354
    .local v5, "height":I
    :goto_1
    const/16 v20, 0x0

    .line 355
    .local v20, "result":Landroid/graphics/Bitmap;
    const/16 v21, 0x1

    .local v21, "sampleSize":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p11

    .line 358
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v18

    .line 359
    .local v18, "bitmapSampled":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    .end local v20    # "result":Landroid/graphics/Bitmap;
    .local v6, "result":Landroid/graphics/Bitmap;
    :try_start_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    move/from16 v21, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 364
    .end local v18    # "bitmapSampled":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    :goto_2
    if-eqz v6, :cond_4

    .line 367
    :try_start_2
    move/from16 v0, p3

    invoke-static {v6, v0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->rotateBitmapInt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 370
    rem-int/lit8 v1, p3, 0x5a

    if-eqz v1, :cond_0

    move-object/from16 v7, p2

    move-object v8, v3

    move/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    .line 373
    invoke-static/range {v6 .. v12}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 381
    :cond_0
    new-instance v1, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move/from16 v0, v21

    invoke-direct {v1, v6, v0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    .line 384
    :goto_3
    return-object v1

    .line 351
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "result":Landroid/graphics/Bitmap;
    .end local v21    # "sampleSize":I
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_0

    .line 352
    .restart local v4    # "width":I
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_1

    .line 375
    .restart local v5    # "height":I
    .restart local v6    # "result":Landroid/graphics/Bitmap;
    .restart local v21    # "sampleSize":I
    :catch_0
    move-exception v19

    .line 376
    .local v19, "e":Ljava/lang/OutOfMemoryError;
    if-eqz v6, :cond_3

    .line 377
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 379
    :cond_3
    throw v19

    .end local v19    # "e":Ljava/lang/OutOfMemoryError;
    :cond_4
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p11

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    .line 384
    invoke-static/range {v7 .. v17}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;II)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v1

    goto :goto_3

    .line 361
    .end local v6    # "result":Landroid/graphics/Bitmap;
    .restart local v20    # "result":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    move-object/from16 v6, v20

    .end local v20    # "result":Landroid/graphics/Bitmap;
    .restart local v6    # "result":Landroid/graphics/Bitmap;
    goto :goto_2

    .restart local v18    # "bitmapSampled":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private static cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;II)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loadedImageUri"    # Landroid/net/Uri;
    .param p2, "points"    # [F
    .param p3, "degreesRotated"    # I
    .param p4, "fixAspectRatio"    # Z
    .param p5, "aspectRatioX"    # I
    .param p6, "aspectRatioY"    # I
    .param p7, "sampleMulti"    # I
    .param p8, "rect"    # Landroid/graphics/Rect;
    .param p9, "width"    # I
    .param p10, "height"    # I

    .prologue
    .line 394
    const/4 v11, 0x0

    .line 397
    .local v11, "result":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 398
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move/from16 v0, p9

    move/from16 v1, p10

    invoke-static {v4, v5, v0, v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result v4

    mul-int v12, p7, v4

    .local v12, "sampleSize":I
    iput v12, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, v10}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 401
    .local v2, "fullBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 404
    :try_start_1
    array-length v4, p2

    new-array v3, v4, [F

    .line 405
    .local v3, "points2":[F
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, p2

    invoke-static {p2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v4, v3

    if-ge v9, v4, :cond_0

    .line 407
    aget v4, v3, v9

    iget v5, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v9

    .line 406
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 410
    invoke-static/range {v2 .. v7}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;[FIZII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 412
    if-eq v11, v2, :cond_1

    .line 413
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 425
    .end local v3    # "points2":[F
    .end local v9    # "i":I
    :cond_1
    new-instance v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v4, v11, v12}, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v4

    .line 412
    :catchall_0
    move-exception v4

    if-eq v11, v2, :cond_2

    .line 413
    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v4
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 417
    .end local v2    # "fullBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "sampleSize":I
    :catch_0
    move-exception v8

    .line 418
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    if-eqz v11, :cond_3

    .line 419
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 421
    :cond_3
    throw v8

    .line 422
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 423
    .local v8, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load sampled bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "points"    # [F
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "degreesRotated"    # I
    .param p4, "fixAspectRatio"    # Z
    .param p5, "aspectRatioX"    # I
    .param p6, "aspectRatioY"    # I

    .prologue
    .line 504
    rem-int/lit8 v13, p3, 0x5a

    if-eqz v13, :cond_3

    .line 506
    const/4 v4, 0x0

    .local v4, "adjLeft":I
    const/4 v5, 0x0

    .local v5, "adjTop":I
    const/4 v12, 0x0

    .local v12, "width":I
    const/4 v8, 0x0

    .line 507
    .local v8, "height":I
    move/from16 v0, p3

    int-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 508
    .local v10, "rads":D
    const/16 v13, 0x5a

    move/from16 v0, p3

    if-lt v0, v13, :cond_0

    const/16 v13, 0xb4

    move/from16 v0, p3

    if-le v0, v13, :cond_4

    const/16 v13, 0x10e

    move/from16 v0, p3

    if-ge v0, v13, :cond_4

    :cond_0
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 509
    .local v7, "compareTo":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v9, v13, :cond_1

    .line 510
    aget v13, p1, v9

    add-int/lit8 v14, v7, -0x1

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_5

    aget v13, p1, v9

    add-int/lit8 v14, v7, 0x1

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_5

    .line 511
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    add-int/lit8 v16, v9, 0x1

    aget v16, p1, v16

    sub-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 512
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    add-int/lit8 v13, v9, 0x1

    aget v13, p1, v13

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    double-to-int v5, v14

    .line 513
    add-int/lit8 v13, v9, 0x1

    aget v13, p1, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    double-to-int v12, v14

    .line 514
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    add-int/lit8 v14, v9, 0x1

    aget v14, p1, v14

    sub-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    double-to-int v8, v14

    .line 519
    :cond_1
    add-int v13, v4, v12

    add-int v14, v5, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 520
    if-eqz p4, :cond_2

    .line 521
    move-object/from16 v0, p2

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    .line 524
    :cond_2
    move-object/from16 v6, p0

    .line 525
    .local v6, "bitmapTmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v13, v14, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 526
    move-object/from16 v0, p0

    if-eq v6, v0, :cond_3

    .line 527
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 530
    .end local v4    # "adjLeft":I
    .end local v5    # "adjTop":I
    .end local v6    # "bitmapTmp":Landroid/graphics/Bitmap;
    .end local v7    # "compareTo":I
    .end local v8    # "height":I
    .end local v9    # "i":I
    .end local v10    # "rads":D
    .end local v12    # "width":I
    :cond_3
    return-object p0

    .line 508
    .restart local v4    # "adjLeft":I
    .restart local v5    # "adjTop":I
    .restart local v8    # "height":I
    .restart local v10    # "rads":D
    .restart local v12    # "width":I
    :cond_4
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 509
    .restart local v7    # "compareTo":I
    .restart local v9    # "i":I
    :cond_5
    add-int/lit8 v9, v9, 0x2

    goto/16 :goto_1
.end method

.method private static decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 451
    :cond_0
    const/4 v1, 0x0

    .line 453
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 454
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 458
    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 454
    return-object v2

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 460
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x200

    if-le v2, v3, :cond_0

    .line 461
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 458
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 435
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 436
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 437
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 438
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 439
    return-object v0

    .line 441
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 128
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {v3, p1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 131
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 132
    invoke-static {v4, v5, p2, p3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result v4

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 133
    invoke-static {v5, v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->calculateInSampleSizeByMaxTextureSize(II)I

    move-result v5

    .line 131
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    invoke-static {v3, p1, v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v4, v0, v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load sampled bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I
    .param p5, "sampleMulti"    # I

    .prologue
    .line 470
    const/4 v3, 0x0

    .line 471
    .local v3, "stream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 473
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 474
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5, p3, p4}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->calculateInSampleSizeByReqestedSize(IIII)I

    move-result v4

    mul-int/2addr v4, p5

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 477
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 480
    :cond_0
    :try_start_1
    new-instance v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v4, v5, v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 489
    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 493
    :cond_1
    :goto_0
    return-object v4

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 484
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, 0x200

    if-le v4, v5, :cond_0

    .line 488
    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 489
    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 493
    :cond_2
    new-instance v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 485
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load sampled bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 489
    if-eqz v0, :cond_3

    .line 490
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    throw v4
.end method

.method public static fixRectForAspectRatio(Landroid/graphics/Rect;II)V
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "aspectRatioX"    # I
    .param p2, "aspectRatioY"    # I

    .prologue
    .line 280
    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 282
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private static getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 571
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v9, v8

    .line 592
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 577
    .end local v9    # "file":Ljava/lang/Object;
    .restart local v8    # "file":Ljava/io/File;
    :cond_0
    const/4 v7, 0x0

    .line 579
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 580
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 581
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 582
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 583
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 584
    .local v10, "realPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    if-eqz v7, :cond_3

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v8, v9

    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "realPath":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    move-object v9, v8

    .line 592
    .local v9, "file":Ljava/lang/Object;
    goto :goto_0

    .line 585
    .end local v9    # "file":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 587
    if-eqz v7, :cond_1

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 587
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .end local v8    # "file":Ljava/io/File;
    .restart local v2    # "proj":[Ljava/lang/String;
    .restart local v6    # "column_index":I
    .local v9, "file":Ljava/io/File;
    .restart local v10    # "realPath":Ljava/lang/String;
    :cond_3
    move-object v8, v9

    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method private static getMaxTextureSize()I
    .locals 13

    .prologue
    const/16 v10, 0x800

    .line 619
    const/16 v0, 0x800

    .line 623
    .local v0, "IMAGE_MAX_BITMAP_DIMENSION":I
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/egl/EGL10;

    .line 624
    .local v4, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v4, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    .line 627
    .local v2, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v11, 0x2

    new-array v9, v11, [I

    .line 628
    .local v9, "version":[I
    invoke-interface {v4, v2, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 631
    const/4 v11, 0x1

    new-array v8, v11, [I

    .line 632
    .local v8, "totalConfigurations":[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v4, v2, v11, v12, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 635
    const/4 v11, 0x0

    aget v11, v8, v11

    new-array v1, v11, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 636
    .local v1, "configurationsList":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v11, 0x0

    aget v11, v8, v11

    invoke-interface {v4, v2, v1, v11, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 638
    const/4 v11, 0x1

    new-array v7, v11, [I

    .line 639
    .local v7, "textureSize":[I
    const/4 v6, 0x0

    .line 642
    .local v6, "maximumTextureSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v11, 0x0

    aget v11, v8, v11

    if-ge v5, v11, :cond_1

    .line 644
    aget-object v11, v1, v5

    const/16 v12, 0x302c

    invoke-interface {v4, v2, v11, v12, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 647
    const/4 v11, 0x0

    aget v11, v7, v11

    if-ge v6, v11, :cond_0

    .line 648
    const/4 v11, 0x0

    aget v6, v7, v11

    .line 642
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 653
    :cond_1
    invoke-interface {v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 656
    const/16 v11, 0x800

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 658
    .end local v1    # "configurationsList":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v2    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v4    # "egl":Ljavax/microedition/khronos/egl/EGL10;
    .end local v5    # "i":I
    .end local v6    # "maximumTextureSize":I
    .end local v7    # "textureSize":[I
    .end local v8    # "totalConfigurations":[I
    .end local v9    # "version":[I
    :goto_1
    return v10

    .line 657
    :catch_0
    move-exception v3

    .line 658
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getRectBottom([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 226
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getRectCenterX([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 247
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getRectCenterY([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 254
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getRectFromPoints([FIIZII)Landroid/graphics/Rect;
    .locals 7
    .param p0, "points"    # [F
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "fixAspectRatio"    # Z
    .param p4, "aspectRatioX"    # I
    .param p5, "aspectRatioY"    # I

    .prologue
    const/4 v6, 0x0

    .line 262
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 263
    .local v1, "left":I
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 264
    .local v4, "top":I
    int-to-float v5, p1

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 265
    .local v3, "right":I
    int-to-float v5, p2

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 267
    .local v0, "bottom":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz p3, :cond_0

    .line 269
    invoke-static {v2, p4, p5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    .line 272
    :cond_0
    return-object v2
.end method

.method public static getRectHeight([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 240
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getRectLeft([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 205
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static getRectRight([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 219
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getRectTop([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 212
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static getRectWidth([F)F
    .locals 2
    .param p0, "points"    # [F

    .prologue
    .line 233
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .prologue
    .line 307
    if-lez p1, :cond_5

    if-lez p2, :cond_5

    :try_start_0
    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-eq p3, v5, :cond_0

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-eq p3, v5, :cond_0

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-ne p3, v5, :cond_5

    .line 311
    :cond_0
    const/4 v2, 0x0

    .line 312
    .local v2, "resized":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-ne p3, v5, :cond_3

    .line 313
    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 322
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 323
    if-eq v2, p0, :cond_2

    .line 324
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 332
    .end local v2    # "resized":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v2

    .line 315
    .restart local v2    # "resized":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 316
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 317
    .local v1, "height":I
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    int-to-float v6, v1

    int-to-float v7, p2

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 318
    .local v3, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_4

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-ne p3, v5, :cond_1

    .line 319
    :cond_4
    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v6, v1

    div-float/2addr v6, v3

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 329
    .end local v1    # "height":I
    .end local v2    # "resized":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    .end local v4    # "width":I
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AIC"

    const-string v6, "Failed to resize cropped image, return bitmap before resize"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v2, p0

    .line 332
    goto :goto_1
.end method

.method public static rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    :try_start_0
    invoke-static {p1, p2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 85
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "ei":Landroid/media/ExifInterface;
    invoke-static {p0, v0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    .end local v0    # "ei":Landroid/media/ExifInterface;
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v2

    .line 91
    :cond_0
    new-instance v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "exif"    # Landroid/media/ExifInterface;

    .prologue
    .line 101
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "orientation":I
    packed-switch v1, :pswitch_data_0

    .line 113
    :pswitch_0
    const/4 v0, 0x0

    .line 116
    .local v0, "degrees":I
    :goto_0
    new-instance v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;

    invoke-direct {v2, p0, v0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v2

    .line 104
    .end local v0    # "degrees":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 105
    .restart local v0    # "degrees":I
    goto :goto_0

    .line 107
    .end local v0    # "degrees":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 108
    .restart local v0    # "degrees":I
    goto :goto_0

    .line 110
    .end local v0    # "degrees":I
    :pswitch_3
    const/16 v0, 0x10e

    .line 111
    .restart local v0    # "degrees":I
    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static rotateBitmapInt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 600
    if-lez p1, :cond_1

    .line 601
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 602
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 603
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 604
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    :cond_1
    move-object v7, p0

    goto :goto_0
.end method

.method public static writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "compressQuality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 296
    invoke-virtual {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    .line 300
    return-void

    .line 298
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->closeSafe(Ljava/io/Closeable;)V

    throw v1
.end method
