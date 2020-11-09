.class Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;
.super Ljava/lang/Object;
.source "AdapterCameraList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->onBindViewHolder(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

.field final synthetic val$cameraName:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iput-object p2, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->val$cameraName:Ljava/lang/String;

    iput p3, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->val$cameraName:Ljava/lang/String;

    const-string v1, "@DD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iget-object v0, v0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iget-object v2, v2, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->context:Landroid/content/Context;

    const-class v3, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iget-object v0, v0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->context:Landroid/content/Context;

    const-string v1, "You don\'t have authority to add camera over internet"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iget-object v1, v0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->thisInstance:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->this$0:Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;

    iget-object v0, v0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->alName:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->onClickListner(Ljava/util/HashMap;)V

    goto :goto_0
.end method
