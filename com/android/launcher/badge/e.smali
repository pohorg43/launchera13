.class public final synthetic Lcom/android/launcher/badge/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/badge/e;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_21

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    return-void

    :cond_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    return-void

    :cond_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    return-void

    :cond_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/e;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_33

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->h(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0

    :pswitch_f  #0x3
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->b(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    :pswitch_18  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_21  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2a  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_33
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_21  #00000001
        :pswitch_18  #00000002
        :pswitch_f  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
