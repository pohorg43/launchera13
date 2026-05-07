.class public final synthetic Lcom/android/launcher3/secondarydisplay/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/secondarydisplay/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/a;->b:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iput-object p2, p0, Lcom/android/launcher3/secondarydisplay/a;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/secondarydisplay/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/a;->b:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/a;->c:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->d(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/a;->b:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/a;->c:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->a(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
