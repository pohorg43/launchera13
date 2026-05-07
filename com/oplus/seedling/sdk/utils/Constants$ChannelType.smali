.class public interface abstract annotation Lcom/oplus/seedling/sdk/utils/Constants$ChannelType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ChannelType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/utils/Constants$ChannelType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/utils/Constants$ChannelType$Companion;

.field public static final NEW_CHANNEL:I = 0x2

.field public static final OLD_CHANNEL:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/utils/Constants$ChannelType$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$ChannelType$Companion;

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$ChannelType;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$ChannelType$Companion;

    return-void
.end method
