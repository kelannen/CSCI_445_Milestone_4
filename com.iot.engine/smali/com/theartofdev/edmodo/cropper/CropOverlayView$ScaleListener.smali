.class Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CropOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/theartofdev/edmodo/cropper/CropOverlayView;


# direct methods
.method private constructor <init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;Lcom/theartofdev/edmodo/cropper/CropOverlayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/theartofdev/edmodo/cropper/CropOverlayView;
    .param p2, "x1"    # Lcom/theartofdev/edmodo/cropper/CropOverlayView$1;

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 12
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 1036
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-static {v9}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->access$100(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 1038
    .local v6, "rect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v7

    .line 1039
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v8

    .line 1040
    .local v8, "y":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v9

    div-float v1, v9, v11

    .line 1041
    .local v1, "dY":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v9

    div-float v0, v9, v11

    .line 1043
    .local v0, "dX":F
    sub-float v5, v8, v1

    .line 1044
    .local v5, "newTop":F
    sub-float v3, v7, v0

    .line 1045
    .local v3, "newLeft":F
    add-float v4, v7, v0

    .line 1046
    .local v4, "newRight":F
    add-float v2, v8, v1

    .line 1048
    .local v2, "newBottom":F
    cmpg-float v9, v3, v4

    if-gez v9, :cond_0

    cmpg-float v9, v5, v2

    if-gtz v9, :cond_0

    cmpl-float v9, v3, v10

    if-ltz v9, :cond_0

    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1051
    invoke-static {v9}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->access$100(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v9

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_0

    cmpl-float v9, v5, v10

    if-ltz v9, :cond_0

    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1053
    invoke-static {v9}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->access$100(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v9

    cmpg-float v9, v2, v9

    if-gtz v9, :cond_0

    .line 1055
    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1056
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-static {v9}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->access$100(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 1057
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;->this$0:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 1060
    :cond_0
    const/4 v9, 0x1

    return v9
.end method
