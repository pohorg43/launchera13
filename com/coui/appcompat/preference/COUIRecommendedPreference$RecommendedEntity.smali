.class public Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendedEntity"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->b:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    return-void
.end method
