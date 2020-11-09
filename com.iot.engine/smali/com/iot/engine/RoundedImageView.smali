.class public Lcom/iot/engine/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public static getCroppedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move/from16 v0, p1

    if-ne v11, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move/from16 v0, p1

    if-eq v11, v0, :cond_2

    .line 53
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v12, v0

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v4, v11, v12

    .line 54
    .local v4, "_w_rate":F
    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v12, v0

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v2, v11, v12

    .line 55
    .local v2, "_h_rate":F
    cmpg-float v11, v4, v2

    if-gez v11, :cond_1

    move v3, v2

    .line 56
    .local v3, "_rate":F
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-int v12, v12

    const/4 v13, 0x0

    invoke-static {p0, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 60
    .end local v2    # "_h_rate":F
    .end local v3    # "_rate":F
    .end local v4    # "_w_rate":F
    .local v10, "sbmp":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 62
    .local v7, "output":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v5, "canvas":Landroid/graphics/Canvas;
    const v6, -0x5e688c

    .line 65
    .local v6, "color":I
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v8, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v9, "rect":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 71
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 72
    const-string v11, "#BAB399"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    div-int/lit8 v11, p2, 0x2

    int-to-float v11, v11

    div-int/lit8 v12, p3, 0x2

    int-to-float v12, v12

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .end local p2    # "w":I
    :goto_2
    div-int/lit8 v13, p2, 0x2

    int-to-float v13, v13

    invoke-virtual {v5, v11, v12, v13, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    invoke-virtual {v5, v10, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    return-object v7

    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "color":I
    .end local v7    # "output":Landroid/graphics/Bitmap;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "rect":Landroid/graphics/Rect;
    .end local v10    # "sbmp":Landroid/graphics/Bitmap;
    .restart local v2    # "_h_rate":F
    .restart local v4    # "_w_rate":F
    .restart local p2    # "w":I
    :cond_1
    move v3, v4

    .line 55
    goto :goto_0

    .line 58
    .end local v2    # "_h_rate":F
    .end local v4    # "_w_rate":F
    :cond_2
    move-object v10, p0

    .restart local v10    # "sbmp":Landroid/graphics/Bitmap;
    goto :goto_1

    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    .restart local v6    # "color":I
    .restart local v7    # "output":Landroid/graphics/Bitmap;
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v9    # "rect":Landroid/graphics/Rect;
    :cond_3
    move/from16 p2, p3

    .line 73
    goto :goto_2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/iot/engine/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 30
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 48
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/iot/engine/RoundedImageView;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/iot/engine/RoundedImageView;->getHeight()I

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/iot/engine/RoundedImageView;->getWidth()I

    move-result v6

    .local v6, "w":I
    invoke-virtual {p0}, Lcom/iot/engine/RoundedImageView;->getHeight()I

    move-result v3

    .line 41
    .local v3, "h":I
    if-ge v6, v3, :cond_2

    move v4, v6

    .line 43
    .local v4, "radius":I
    :goto_1
    invoke-static {v1, v4, v6, v3}, Lcom/iot/engine/RoundedImageView;->getCroppedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 46
    .local v5, "roundBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    invoke-virtual {p1, v5, v9, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .end local v4    # "radius":I
    .end local v5    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_2
    move v4, v3

    .line 41
    goto :goto_1
.end method
