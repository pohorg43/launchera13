.class public Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final synthetic b:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$b;->b:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$b;->b:Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;->access$600(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method
