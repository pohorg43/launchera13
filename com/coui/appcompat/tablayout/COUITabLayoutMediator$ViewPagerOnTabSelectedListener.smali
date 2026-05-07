.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# virtual methods
.method public a(Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;)V
    .registers 2

    iget-object p0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    iget-boolean p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->f:Z

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x0

    throw p0
.end method

.method public b(Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public c(Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;)V
    .registers 2

    return-void
.end method
