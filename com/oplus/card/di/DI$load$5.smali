.class final Lcom/oplus/card/di/DI$load$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/di/DI;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/card/config/domain/ICardConfigInfoManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/card/di/DI$load$5;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/di/DI$load$5;

    invoke-direct {v0}, Lcom/oplus/card/di/DI$load$5;-><init>()V

    sput-object v0, Lcom/oplus/card/di/DI$load$5;->INSTANCE:Lcom/oplus/card/di/DI$load$5;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/card/config/domain/ICardConfigInfoManager;
    .registers 1

    new-instance p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;

    invoke-direct {p0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/di/DI$load$5;->invoke()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    return-object p0
.end method
