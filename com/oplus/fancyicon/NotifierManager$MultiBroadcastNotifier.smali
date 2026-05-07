.class Lcom/oplus/fancyicon/NotifierManager$MultiBroadcastNotifier;
.super Lcom/oplus/fancyicon/NotifierManager$BroadcastNotifier;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBroadcastNotifier"
.end annotation


# instance fields
.field private mIntents:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createIntentFilter()Landroid/content/IntentFilter;
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object p0, p0, Lcom/oplus/fancyicon/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-object v0
.end method
