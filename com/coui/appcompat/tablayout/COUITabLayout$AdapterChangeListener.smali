.class Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->b:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 5
    .param p1  # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->b:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v0, p2, Lcom/coui/appcompat/tablayout/COUITabLayout;->j0:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_b

    iget-boolean p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->a:Z

    invoke-virtual {p2, p3, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->v(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :cond_b
    return-void
.end method
