.class public final synthetic Lcom/android/launcher/badge/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/badge/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/i;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/badge/i;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/i;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p2, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->h(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void

    :goto_10
    iget-object p0, p0, Lcom/android/launcher/badge/i;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    check-cast p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    check-cast p2, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->j(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
