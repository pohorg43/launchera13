.class public Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;->this$0:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;->this$0:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-static {v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->access$200(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    iget p1, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->viewType:I

    invoke-static {p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->access$300(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter$GridSpanSizer;->this$0:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-static {p0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->access$400(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)I

    move-result p0

    return p0
.end method
