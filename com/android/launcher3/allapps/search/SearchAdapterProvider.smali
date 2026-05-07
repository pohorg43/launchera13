.class public abstract Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
.super Lcom/android/launcher3/allapps/BaseAdapterProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/BaseAdapterProvider;"
    }
.end annotation


# instance fields
.field public final mLauncher:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAdapterProvider;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method


# virtual methods
.method public abstract getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end method

.method public abstract getHighlightedItem()Landroid/view/View;
.end method

.method public abstract launchHighlightedItem()Z
.end method

.method public onSliceStatusUpdate(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method
