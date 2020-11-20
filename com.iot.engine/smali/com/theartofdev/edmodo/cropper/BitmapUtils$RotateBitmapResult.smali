.class public final Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RotateBitmapResult"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final degrees:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "degrees"    # I

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 721
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    .line 722
    return-void
.end method
