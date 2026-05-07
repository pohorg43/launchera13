.class public interface abstract annotation Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY;
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
    name = "CATEGORY"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final APP:I = 0x2

.field public static final CONTENT_OPERATION:I = 0x3

.field public static final Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;

.field public static final INSTANT:I = 0x1

.field public static final SEED_CARD:I = 0x64

.field public static final SERVICE:I = 0x4

.field public static final TRANS_CARD:I = -0x1

.field public static final WIDGET_CARD:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;->$$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;

    sput-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY;->Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;

    return-void
.end method
