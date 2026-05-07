.class final Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/IntentFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;

    invoke-direct {v0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/IntentFilter;
    .registers 2

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "oplus.intent.action.THERMAL_LEVEL_CHANGE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$filter$2;->invoke()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method
