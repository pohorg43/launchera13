.class public Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mIndex:I

.field private final mPagePreviewItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/pagepreview/PagePreviewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Z


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/pagepreview/PagePreviewItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->mPagePreviewItems:Ljava/util/List;

    iput p2, p0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->mIndex:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->mIndex:I

    return p0
.end method

.method public getPagePreviewItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/pagepreview/PagePreviewItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->mPagePreviewItems:Ljava/util/List;

    return-object p0
.end method

.method public isSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->mSelected:Z

    return p0
.end method

.method public setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;->mSelected:Z

    return-void
.end method
