.class public interface abstract annotation Lcom/oplus/card/manager/domain/model/CardAction$ACTION;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/model/CardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CLICK:I = 0x1

.field public static final CONFIGURATION_LIST:I = 0x5

.field public static final Companion:Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;

.field public static final EXPOSED_STATE:I = 0x3

.field public static final INVALIDATE:I = 0x4

.field public static final LIFE_CIRCLE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;->$$INSTANCE:Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction$ACTION;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;

    return-void
.end method
