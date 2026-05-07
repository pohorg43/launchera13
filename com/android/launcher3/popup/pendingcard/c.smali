.class public final synthetic Lcom/android/launcher3/popup/pendingcard/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/c;->b:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/c;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/c;->b:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/c;->b:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController;->b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
