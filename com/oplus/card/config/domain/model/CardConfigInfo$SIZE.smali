.class public interface abstract annotation Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE;
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
    name = "SIZE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;

.field public static final FOUR_PLUS_FOUR:I = 0x3

.field public static final N_PLUS_FOUR:I = 0x4

.field public static final ONE_PLUS_FOUR:I = 0x5

.field public static final ONE_PLUS_TWO:I = 0x5

.field public static final TWO_PLUS_FOUR:I = 0x2

.field public static final TWO_PLUS_TWO:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;->$$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;

    sput-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE;->Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;

    return-void
.end method
