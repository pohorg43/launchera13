.class public final synthetic Lcom/android/launcher/badge/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/badge/BadgeInfoDiffReporter$DiffResult;
.implements Lcom/android/launcher/badge/ShortCutBadgeDiffReporter$DiffResult;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/g;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-static {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->g(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-static {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->k(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
