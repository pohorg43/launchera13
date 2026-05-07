.class public final synthetic Lcom/android/launcher3/dragndrop/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/dragndrop/AddItemActivity;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/e;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/e;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/dragndrop/e;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/e;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->k(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/e;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->n(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
