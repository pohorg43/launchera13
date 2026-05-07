.class public final synthetic Lcom/oplus/settingslib/provider/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingslib/provider/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/oplus/settingslib/provider/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/settingslib/provider/b;->c:I

    iput p4, p0, Lcom/oplus/settingslib/provider/b;->d:I

    iput-boolean p5, p0, Lcom/oplus/settingslib/provider/b;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/settingslib/provider/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/settingslib/provider/b;->b:Ljava/lang/String;

    iget v2, p0, Lcom/oplus/settingslib/provider/b;->c:I

    iget v3, p0, Lcom/oplus/settingslib/provider/b;->d:I

    iget-boolean p0, p0, Lcom/oplus/settingslib/provider/b;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/settingslib/provider/OplusSearchHighlightUtils;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;IIZ)V

    return-void
.end method
