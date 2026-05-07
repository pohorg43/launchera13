.class Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->s()V

    return-void
.end method

.method public onInvalidated()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->s()V

    return-void
.end method
