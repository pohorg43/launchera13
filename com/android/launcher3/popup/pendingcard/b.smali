.class public final synthetic Lcom/android/launcher3/popup/pendingcard/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/popup/pendingcard/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/b;

    invoke-direct {v0}, Lcom/android/launcher3/popup/pendingcard/b;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/b;->a:Lcom/android/launcher3/popup/pendingcard/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    check-cast p2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->a(Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)I

    move-result p0

    return p0
.end method
