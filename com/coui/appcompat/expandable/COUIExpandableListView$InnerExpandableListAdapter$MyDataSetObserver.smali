.class public Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
