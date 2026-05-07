.class public Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout$a;->a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout$a;->a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;Z)Z

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout$a;->a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)Le/e;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout$a;->a:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->a(Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;)Le/e;

    move-result-object p0

    invoke-interface {p0}, Le/e;->a()V

    :cond_17
    return-void
.end method
