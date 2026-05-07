.class final Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils;->lambda$showHighlight$2(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils$1;->val$view:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
