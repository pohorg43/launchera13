.class public Lcom/oplus/anim/utils/Logger;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static INSTANCE:Lcom/oplus/anim/EffectiveLogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/anim/utils/LogcatLogger;

    invoke-direct {v0}, Lcom/oplus/anim/utils/LogcatLogger;-><init>()V

    sput-object v0, Lcom/oplus/anim/utils/Logger;->INSTANCE:Lcom/oplus/anim/EffectiveLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/oplus/anim/utils/Logger;->INSTANCE:Lcom/oplus/anim/EffectiveLogger;

    invoke-interface {v0, p0}, Lcom/oplus/anim/EffectiveLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/oplus/anim/utils/Logger;->INSTANCE:Lcom/oplus/anim/EffectiveLogger;

    invoke-interface {v0, p0, p1}, Lcom/oplus/anim/EffectiveLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/oplus/anim/utils/Logger;->INSTANCE:Lcom/oplus/anim/EffectiveLogger;

    invoke-interface {v0, p0, p1}, Lcom/oplus/anim/EffectiveLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setInstance(Lcom/oplus/anim/EffectiveLogger;)V
    .registers 1

    sput-object p0, Lcom/oplus/anim/utils/Logger;->INSTANCE:Lcom/oplus/anim/EffectiveLogger;

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/oplus/anim/utils/Logger;->INSTANCE:Lcom/oplus/anim/EffectiveLogger;

    invoke-interface {v0, p0}, Lcom/oplus/anim/EffectiveLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/oplus/anim/utils/Logger;->INSTANCE:Lcom/oplus/anim/EffectiveLogger;

    invoke-interface {v0, p0, p1}, Lcom/oplus/anim/EffectiveLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
