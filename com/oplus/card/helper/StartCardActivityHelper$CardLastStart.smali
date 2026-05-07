.class public Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/helper/StartCardActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardLastStart"
.end annotation


# instance fields
.field public final cardView:Landroid/view/View;

.field public final info:[I

.field public final intent:Landroid/content/Intent;

.field public final startTime:J

.field public final synthetic this$0:Lcom/oplus/card/helper/StartCardActivityHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->this$0:Lcom/oplus/card/helper/StartCardActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->cardView:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    check-cast p2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p2}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->createCardIdentify(Lcom/android/launcher3/card/LauncherCardInfo;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->info:[I

    return-void
.end method

.method public constructor <init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;[I)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->this$0:Lcom/oplus/card/helper/StartCardActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->cardView:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    iput-object p4, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->info:[I

    return-void
.end method

.method private createCardIdentify(Lcom/android/launcher3/card/LauncherCardInfo;)[I
    .registers 4

    const/4 p0, 0x3

    new-array p0, p0, [I

    iget v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v1, 0x0

    aput v0, p0, v1

    iget v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v1, 0x1

    aput v0, p0, v1

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const/4 v0, 0x2

    aput p1, p0, v0

    return-object p0
.end method
