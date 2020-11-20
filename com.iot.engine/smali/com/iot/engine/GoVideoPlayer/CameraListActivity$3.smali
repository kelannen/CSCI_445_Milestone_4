.class Lcom/iot/engine/GoVideoPlayer/CameraListActivity$3;
.super Ljava/lang/Object;
.source "CameraListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->alertDialogDelete(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$3;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iput-object p2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 220
    return-void
.end method
