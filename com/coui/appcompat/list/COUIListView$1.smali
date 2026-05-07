.class Lcom/coui/appcompat/list/COUIListView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/list/COUIListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/list/COUIListView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/list/COUIListView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView$1;->a:Lcom/coui/appcompat/list/COUIListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView$1;->a:Lcom/coui/appcompat/list/COUIListView;

    iget-boolean v1, v0, Lcom/coui/appcompat/list/COUIListView;->h:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView$1;->a:Lcom/coui/appcompat/list/COUIListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_26

    :cond_17
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView$1;->a:Lcom/coui/appcompat/list/COUIListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/list/COUIListView;->a(II)V

    :goto_26
    return-void
.end method
