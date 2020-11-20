.class public final Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;
.super Ljava/lang/Object;
.source "BitmapCroppingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final error:Ljava/lang/Exception;

.field public final isSave:Z

.field public final sampleSize:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sampleSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 269
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 270
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    .line 272
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    .line 273
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sampleSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 277
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 278
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    .line 280
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    .line 281
    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;Z)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "isSave"    # Z

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 285
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 286
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    .line 287
    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    .line 288
    const/4 v0, 0x1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    .line 289
    return-void
.end method
