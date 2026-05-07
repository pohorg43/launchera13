.class public interface abstract annotation Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/config/domain/model/CardConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DISPLAYAREA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final ASSISTANT_LAUNCHER:I = 0x0

.field public static final ASSISTANT_ONLY:I = 0x1

.field public static final Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA$Companion;

.field public static final LAUNCHER_ONLY:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA$Companion;->$$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA$Companion;

    sput-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA;->Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA$Companion;

    return-void
.end method
