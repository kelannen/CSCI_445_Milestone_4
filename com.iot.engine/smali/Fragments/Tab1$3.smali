.class LFragments/Tab1$3;
.super Ljava/lang/Object;
.source "Tab1.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Tab1;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Tab1;


# direct methods
.method constructor <init>(LFragments/Tab1;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Tab1;

    .prologue
    .line 268
    iput-object p1, p0, LFragments/Tab1$3;->this$0:LFragments/Tab1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 271
    iget-object v1, p0, LFragments/Tab1$3;->this$0:LFragments/Tab1;

    invoke-static {v1}, LFragments/Tab1;->access$100(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, LFragments/Tab1$3;->this$0:LFragments/Tab1;

    iget-object v1, v1, LFragments/Tab1;->view:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 273
    .local v0, "rb":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "Off"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, LFragments/Tab1$3;->this$0:LFragments/Tab1;

    invoke-static {v1}, LFragments/Tab1;->access$200(LFragments/Tab1;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    .end local v0    # "rb":Landroid/widget/RadioButton;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0    # "rb":Landroid/widget/RadioButton;
    :cond_1
    iget-object v1, p0, LFragments/Tab1$3;->this$0:LFragments/Tab1;

    invoke-static {v1}, LFragments/Tab1;->access$200(LFragments/Tab1;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
