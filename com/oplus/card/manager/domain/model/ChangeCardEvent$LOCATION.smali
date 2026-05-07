.class public interface abstract annotation Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/model/ChangeCardEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "LOCATION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final ASSISTANT:I = 0x1

.field public static final Companion:Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;

.field public static final LAUNCHER:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;->$$INSTANCE:Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;

    sput-object v0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION;->Companion:Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;

    return-void
.end method
