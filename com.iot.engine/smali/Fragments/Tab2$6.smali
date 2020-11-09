.class LFragments/Tab2$6;
.super Ljava/lang/Object;
.source "Tab2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Tab2;->showMin(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Tab2;

.field final synthetic val$np:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(LFragments/Tab2;Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Tab2;

    .prologue
    .line 215
    iput-object p1, p0, LFragments/Tab2$6;->this$0:LFragments/Tab2;

    iput-object p2, p0, LFragments/Tab2$6;->val$np:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 217
    iget-object v0, p0, LFragments/Tab2$6;->this$0:LFragments/Tab2;

    iget-object v0, v0, LFragments/Tab2;->edittxt_min:Landroid/widget/EditText;

    iget-object v1, p0, LFragments/Tab2$6;->val$np:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method
