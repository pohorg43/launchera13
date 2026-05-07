.class public Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/uxicon/ui/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(ILjava/util/Map;)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mSwipe:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    const/high16 v1, -0x80000000

    const-string v2, "UxChangeIconPanelFragment"

    const/4 v3, 0x0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mSwipe:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->mSwipe:Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxSwipeRefreshLayout;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishLoadMore mPageLoadStartPosition: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentPage: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v0

    if-ne v0, v1, :cond_90

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_90

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->removeFooterView(II)V

    goto :goto_cd

    :cond_90
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v4

    if-le v0, v4, :cond_cd

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v5}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v5}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->removeFooterView(II)V

    :cond_cd
    :goto_cd
    const-string v0, "setData after onFetchIcons mCurrentPage: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " index: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v0

    if-eq v0, v1, :cond_10b

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v0

    if-ne v0, p1, :cond_10b

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->setData(Ljava/util/Map;I)V

    goto :goto_116

    :cond_10b
    if-nez p1, :cond_116

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object p0

    invoke-virtual {p0, p2, v3}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->setData(Ljava/util/Map;I)V

    :cond_116
    :goto_116
    return-void
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;ILjava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a(ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1000(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1000(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/badge/b;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher/badge/b;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;ILjava/util/Map;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void
.end method
