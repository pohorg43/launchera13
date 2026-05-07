.class public final synthetic Lcom/oplus/settingslib/provider/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ILandroidx/recyclerview/widget/RecyclerView;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/settingslib/provider/a;->a:I

    iput-object p2, p0, Lcom/oplus/settingslib/provider/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lcom/oplus/settingslib/provider/a;->c:I

    iput-boolean p4, p0, Lcom/oplus/settingslib/provider/a;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/oplus/settingslib/provider/a;->a:I

    iget-object v1, p0, Lcom/oplus/settingslib/provider/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/oplus/settingslib/provider/a;->c:I

    iget-boolean p0, p0, Lcom/oplus/settingslib/provider/a;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils;->a(ILandroidx/recyclerview/widget/RecyclerView;IZ)V

    return-void
.end method
