.class Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;
.super Ljava/lang/Object;
.source "RemoteDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    iget-object v1, v1, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerList:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->access$102(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    iget-object v1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    iget-object v1, v1, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerID:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->access$202(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
