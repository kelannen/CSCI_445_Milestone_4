.class LAdapter/FavouriteChannelDataAdapter$3;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/FavouriteChannelDataAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/FavouriteChannelDataAdapter;

    .prologue
    .line 111
    iput-object p1, p0, LAdapter/FavouriteChannelDataAdapter$3;->this$0:LAdapter/FavouriteChannelDataAdapter;

    iput p2, p0, LAdapter/FavouriteChannelDataAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, LAdapter/FavouriteChannelDataAdapter$3;->this$0:LAdapter/FavouriteChannelDataAdapter;

    invoke-static {v0}, LAdapter/FavouriteChannelDataAdapter;->access$100(LAdapter/FavouriteChannelDataAdapter;)Lcom/iot/engine/GoRemote/SubRemoteFragment;

    move-result-object v1

    iget-object v0, p0, LAdapter/FavouriteChannelDataAdapter$3;->this$0:LAdapter/FavouriteChannelDataAdapter;

    iget-object v0, v0, LAdapter/FavouriteChannelDataAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/FavouriteChannelDataAdapter$3;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->onClickListner(Ljava/util/HashMap;)V

    .line 115
    return-void
.end method
