.class LAdapter/FavouriteChannelDataAdapter$1;
.super Ljava/lang/Object;
.source "FavouriteChannelDataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/FavouriteChannelDataAdapter;->onBindViewHolder(LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/FavouriteChannelDataAdapter;


# direct methods
.method constructor <init>(LAdapter/FavouriteChannelDataAdapter;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/FavouriteChannelDataAdapter;

    .prologue
    .line 93
    iput-object p1, p0, LAdapter/FavouriteChannelDataAdapter$1;->this$0:LAdapter/FavouriteChannelDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LAdapter/FavouriteChannelDataAdapter$1;->this$0:LAdapter/FavouriteChannelDataAdapter;

    iget-object v1, v1, LAdapter/FavouriteChannelDataAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/iot/engine/GoRemote/AddChannel;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "remote_id"

    iget-object v2, p0, LAdapter/FavouriteChannelDataAdapter$1;->this$0:LAdapter/FavouriteChannelDataAdapter;

    invoke-static {v2}, LAdapter/FavouriteChannelDataAdapter;->access$000(LAdapter/FavouriteChannelDataAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, LAdapter/FavouriteChannelDataAdapter$1;->this$0:LAdapter/FavouriteChannelDataAdapter;

    iget-object v1, v1, LAdapter/FavouriteChannelDataAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
