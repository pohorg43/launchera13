.class public final Lcom/android/launcher3/card/uscard/USCardManager$onCardListChangeCb$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChange()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USCardManager;->tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V

    :goto_c
    return-void
.end method
