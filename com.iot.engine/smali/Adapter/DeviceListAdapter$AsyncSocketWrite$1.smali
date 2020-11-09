.class LAdapter/DeviceListAdapter$AsyncSocketWrite$1;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/DeviceListAdapter$AsyncSocketWrite;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LAdapter/DeviceListAdapter$AsyncSocketWrite;


# direct methods
.method constructor <init>(LAdapter/DeviceListAdapter$AsyncSocketWrite;)V
    .locals 0
    .param p1, "this$1"    # LAdapter/DeviceListAdapter$AsyncSocketWrite;

    .prologue
    .line 150
    iput-object p1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite$1;->this$1:LAdapter/DeviceListAdapter$AsyncSocketWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite$1;->this$1:LAdapter/DeviceListAdapter$AsyncSocketWrite;

    iget-object v0, v0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v0, v0, LAdapter/DeviceListAdapter;->context:Landroid/content/Context;

    const-string v1, "Check hotspot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    return-void
.end method
